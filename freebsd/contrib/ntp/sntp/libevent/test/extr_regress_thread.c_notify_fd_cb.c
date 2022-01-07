
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int notification_fd_used ;

__attribute__((used)) static void
notify_fd_cb(evutil_socket_t fd, short event, void *arg)
{
 ++notification_fd_used;
}
