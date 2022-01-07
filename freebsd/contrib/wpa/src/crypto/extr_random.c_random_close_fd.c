
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int eloop_unregister_read_sock (int) ;
 int random_fd ;

__attribute__((used)) static void random_close_fd(void)
{
 if (random_fd >= 0) {
  eloop_unregister_read_sock(random_fd);
  close(random_fd);
  random_fd = -1;
 }
}
