
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errtype; } ;
struct TYPE_5__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;
typedef int ifconfig_errtype ;



ifconfig_errtype
ifconfig_err_errtype(ifconfig_handle_t *h)
{

 return (h->error.errtype);
}
