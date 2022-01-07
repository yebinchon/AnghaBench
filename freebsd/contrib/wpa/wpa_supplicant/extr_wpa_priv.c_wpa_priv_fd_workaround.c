
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int open (char*,int ) ;

__attribute__((used)) static void wpa_priv_fd_workaround(void)
{

 int s, i;





 for (i = 0; i < 3; i++) {
  s = open("/dev/null", O_RDWR);
  if (s > 2) {
   close(s);
   break;
  }
 }

}
