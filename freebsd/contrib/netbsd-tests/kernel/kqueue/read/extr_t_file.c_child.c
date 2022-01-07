
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int FILENAME ;
 int NLINES ;
 int O_APPEND ;
 int O_WRONLY ;
 int _exit (int ) ;
 int close (int) ;
 int err (int ,char*) ;
 int open (int ,int,int) ;
 int sleep (int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
child(void)
{
 int i, n, fd;

 (void)sleep(1);

 for (i = 0; i < NLINES; ++i) {
  fd = open(FILENAME, O_WRONLY|O_APPEND, 0644);
  if (fd < 0)
   err(EXIT_FAILURE, "open()");

  n = write(fd, "foo\n", 4);
  if (n < 0)
   err(EXIT_FAILURE, "write()");

  (void)close(fd);
  (void)sleep(1);
 }
 _exit(0);
}
