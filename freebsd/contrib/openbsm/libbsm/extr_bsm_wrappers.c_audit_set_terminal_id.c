
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_3__ {int machine; int port; } ;
typedef TYPE_1__ au_tid_t ;


 int audit_set_terminal_host (int *) ;
 int audit_set_terminal_port (int *) ;
 int kAUBadParamErr ;
 int kAUNoErr ;

int
audit_set_terminal_id(au_tid_t *tid)
{
 dev_t port;
 int ret;

 if (tid == ((void*)0))
  return (kAUBadParamErr);
 if ((ret = audit_set_terminal_port(&port)) != kAUNoErr)
  return (ret);
 tid->port = port;
 return (audit_set_terminal_host(&tid->machine));
}
