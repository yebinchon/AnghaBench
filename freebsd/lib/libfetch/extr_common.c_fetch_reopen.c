
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sd; int ref; } ;
typedef TYPE_1__ conn_t ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 TYPE_1__* calloc (int,int) ;
 int fcntl (int,int ,int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

conn_t *
fetch_reopen(int sd)
{
 conn_t *conn;
 int opt = 1;


 if ((conn = calloc(1, sizeof(*conn))) == ((void*)0))
  return (((void*)0));
 fcntl(sd, F_SETFD, FD_CLOEXEC);
 setsockopt(sd, SOL_SOCKET, SO_NOSIGPIPE, &opt, sizeof opt);
 conn->sd = sd;
 ++conn->ref;
 return (conn);
}
