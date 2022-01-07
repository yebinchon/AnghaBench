
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int open (char*,int ) ;

__attribute__((used)) static void wpa_supplicant_fd_workaround(int start)
{

 static int fd[3] = { -1, -1, -1 };
 int i;





 if (start) {
  for (i = 0; i < 3; i++) {
   fd[i] = open("/dev/null", O_RDWR);
   if (fd[i] > 2) {
    close(fd[i]);
    fd[i] = -1;
    break;
   }
  }
 } else {
  for (i = 0; i < 3; i++) {
   if (fd[i] >= 0) {
    close(fd[i]);
    fd[i] = -1;
   }
  }
 }

}
