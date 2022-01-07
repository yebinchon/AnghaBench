
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int fd; } ;
typedef TYPE_1__ vsock_t ;
typedef enum desc_type { ____Placeholder_desc_type } desc_type ;
typedef int SOCKET ;


 int LINK_SLIST (int ,TYPE_1__*,int ) ;
 TYPE_1__* emalloc (int) ;
 int fd_list ;
 int link ;
 int maintain_activefds (int ,int ) ;

__attribute__((used)) static void
add_fd_to_list(
 SOCKET fd,
 enum desc_type type
 )
{
 vsock_t *lsock = emalloc(sizeof(*lsock));

 lsock->fd = fd;
 lsock->type = type;

 LINK_SLIST(fd_list, lsock, link);
 maintain_activefds(fd, 0);
}
