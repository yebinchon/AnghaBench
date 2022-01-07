
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_3__ {int sock; int self; } ;
typedef TYPE_1__ Channel ;


 int FD_SET (int ,int *) ;
 int debug3 (char*,int ) ;

__attribute__((used)) static void
channel_pre_connecting(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 debug3("channel %d: waiting for connection", c->self);
 FD_SET(c->sock, writeset);
}
