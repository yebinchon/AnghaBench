
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int n_write_a_byte_cb ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
write_a_byte_cb(evutil_socket_t fd, short what, void *arg)
{
 char buf[] = "x";
 if (write(fd, buf, 1) == 1)
  ++n_write_a_byte_cb;
}
