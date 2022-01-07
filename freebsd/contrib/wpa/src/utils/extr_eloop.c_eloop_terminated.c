
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pending_terminate; scalar_t__ terminate; } ;


 TYPE_1__ eloop ;

int eloop_terminated(void)
{
 return eloop.terminate || eloop.pending_terminate;
}
