
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i; struct TYPE_5__* link; } ;
typedef TYPE_1__ int_node ;
struct TYPE_6__ {int reset_counters; } ;
typedef TYPE_2__ config_tree ;


 int DPRINTF (int,char*) ;
 TYPE_1__* HEAD_PFIFO (int ) ;







 int ctl_clr_stats () ;
 int io_clr_stats () ;
 int keyword (int) ;
 int peer_all_reset () ;
 int peer_clr_stats () ;
 int proto_clr_stats () ;
 int reset_auth_stats () ;
 int timer_clr_stats () ;

__attribute__((used)) static void
config_reset_counters(
 config_tree *ptree
 )
{
 int_node *counter_set;

 for (counter_set = HEAD_PFIFO(ptree->reset_counters);
      counter_set != ((void*)0);
      counter_set = counter_set->link) {
  switch (counter_set->i) {
  default:
   DPRINTF(1, ("config_reset_counters %s (%d) invalid\n",
        keyword(counter_set->i), counter_set->i));
   break;

  case 134:
   peer_all_reset();
   break;

  case 133:
   reset_auth_stats();
   break;

  case 132:
   ctl_clr_stats();
   break;

  case 131:
   io_clr_stats();
   break;

  case 130:
   peer_clr_stats();
   break;

  case 129:
   proto_clr_stats();
   break;

  case 128:
   timer_clr_stats();
   break;
  }
 }
}
