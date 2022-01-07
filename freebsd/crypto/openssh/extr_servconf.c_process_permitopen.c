
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int num_permitted_listens; int permitted_listens; int num_permitted_opens; int permitted_opens; } ;
typedef TYPE_1__ ServerOptions ;


 int process_permitopen_list (struct ssh*,int ,int ,int ) ;
 int sPermitListen ;
 int sPermitOpen ;

void
process_permitopen(struct ssh *ssh, ServerOptions *options)
{
 process_permitopen_list(ssh, sPermitOpen,
     options->permitted_opens, options->num_permitted_opens);
 process_permitopen_list(ssh, sPermitListen,
     options->permitted_listens,
     options->num_permitted_listens);
}
