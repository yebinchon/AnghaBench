
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int write (int ,char*,int) ;

__attribute__((used)) static void send_a_byte_cb(evutil_socket_t fd, short what, void *arg)
{
 evutil_socket_t *sockp = arg;
 (void) fd; (void) what;
 (void) write(*sockp, "A", 1);
}
