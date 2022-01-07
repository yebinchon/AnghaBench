
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {scalar_t__ fd; int flags; scalar_t__ last_ttl; int sin; } ;


 int INT_BCASTXMIT ;
 scalar_t__ INVALID_SOCKET ;
 int close_and_delete_fd_from_list (scalar_t__) ;
 scalar_t__ open_socket (int *,int,int ,struct interface*) ;
 int socket_broadcast_disable (struct interface*,int *) ;

__attribute__((used)) static int
refresh_interface(
 struct interface * interface
 )
{
 return (interface->fd != INVALID_SOCKET);

}
