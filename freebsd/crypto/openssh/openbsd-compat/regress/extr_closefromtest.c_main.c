
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int NUM_OPENS ;
 int O_RDONLY ;
 int close (int) ;
 int closefrom (int) ;
 int exit (int ) ;
 int fail (char*) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;

int
main(void)
{
 int i, max, fds[NUM_OPENS];
 char buf[512];

 for (i = 0; i < NUM_OPENS; i++)
  if ((fds[i] = open("/dev/null", O_RDONLY)) == -1)
   exit(0);
 max = i - 1;


 closefrom(fds[max]);
 if (close(fds[max]) != -1)
  fail("failed to close highest fd");


 for (i = 0; i < max; i++)
  if (read(fds[i], buf, sizeof(buf)) == -1)
   fail("closed descriptors it should not have");


 closefrom(fds[0]);
 for (i = 0; i < NUM_OPENS; i++)
  if (close(fds[i]) != -1)
   fail("failed to close from lowest fd");
 return 0;
}
