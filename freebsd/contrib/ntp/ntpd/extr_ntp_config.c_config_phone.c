
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; struct TYPE_5__* link; } ;
typedef TYPE_1__ string_node ;
struct TYPE_6__ {int phone; } ;
typedef TYPE_2__ config_tree ;


 int COUNTOF (int **) ;
 TYPE_1__* HEAD_PFIFO (int ) ;
 int LOG_INFO ;
 int * estrdup (int ) ;
 int msyslog (int ,char*,int,int ) ;
 int ** sys_phone ;

__attribute__((used)) static void
config_phone(
 config_tree *ptree
 )
{
 size_t i;
 string_node * sn;

 i = 0;
 sn = HEAD_PFIFO(ptree->phone);
 for (; sn != ((void*)0); sn = sn->link) {

  if (i < COUNTOF(sys_phone) - 1) {
   sys_phone[i++] = estrdup(sn->s);
   sys_phone[i] = ((void*)0);
  } else {
   msyslog(LOG_INFO,
    "phone: Number of phone entries exceeds %zu. Ignoring phone %s...",
    (COUNTOF(sys_phone) - 1), sn->s);
  }
 }
}
