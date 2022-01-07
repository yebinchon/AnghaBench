
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_5__ {scalar_t__ i; struct TYPE_5__* link; } ;
typedef TYPE_1__ int_node ;
struct TYPE_6__ {int ttl; } ;
typedef TYPE_2__ config_tree ;


 size_t COUNTOF (scalar_t__*) ;
 TYPE_1__* HEAD_PFIFO (int ) ;
 int LOG_INFO ;
 int msyslog (int ,char*,size_t,scalar_t__) ;
 scalar_t__* sys_ttl ;
 size_t sys_ttlmax ;

__attribute__((used)) static void
config_ttl(
 config_tree *ptree
 )
{
 size_t i = 0;
 int_node *curr_ttl;





 curr_ttl = HEAD_PFIFO(ptree->ttl);
 for (; curr_ttl != ((void*)0); curr_ttl = curr_ttl->link) {
  if (i < COUNTOF(sys_ttl))
   sys_ttl[i++] = (u_char)curr_ttl->i;
  else
   msyslog(LOG_INFO,
    "ttl: Number of TTL entries exceeds %zu. Ignoring TTL %d...",
    COUNTOF(sys_ttl), curr_ttl->i);
 }
 if (0 != i)
  sys_ttlmax = i - 1;
}
