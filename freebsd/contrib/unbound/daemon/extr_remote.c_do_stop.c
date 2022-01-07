
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon_remote {TYPE_1__* worker; } ;
struct TYPE_2__ {int need_to_exit; int base; } ;
typedef int RES ;


 int comm_base_exit (int ) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_stop(RES* ssl, struct daemon_remote* rc)
{
 rc->worker->need_to_exit = 1;
 comm_base_exit(rc->worker->base);
 send_ok(ssl);
}
