
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* interface_receiver_t ) (void*,TYPE_1__*) ;
struct TYPE_6__ {TYPE_5__* ep; int action; } ;
typedef TYPE_1__ interface_info_t ;
struct TYPE_7__ {struct TYPE_7__* elink; } ;


 int IFS_EXISTS ;
 TYPE_5__* ep_list ;
 int stub1 (void*,TYPE_1__*) ;

void
interface_enumerate(
 interface_receiver_t receiver,
 void * data
 )
{
 interface_info_t ifi;

 ifi.action = IFS_EXISTS;
 for (ifi.ep = ep_list; ifi.ep != ((void*)0); ifi.ep = ifi.ep->elink)
  (*receiver)(data, &ifi);
}
