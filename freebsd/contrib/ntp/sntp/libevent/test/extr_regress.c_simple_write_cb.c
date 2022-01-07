
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int TEST1 ;
 scalar_t__ strlen (int ) ;
 int test_ok ;
 int write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
simple_write_cb(evutil_socket_t fd, short event, void *arg)
{
 int len;

 len = write(fd, TEST1, strlen(TEST1) + 1);
 if (len == -1)
  test_ok = 0;
 else
  test_ok = 1;
}
