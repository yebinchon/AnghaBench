
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef TYPE_1__ restrict_u ;


 int send_restrict_entry (TYPE_1__*,int,int ) ;

__attribute__((used)) static void
send_restrict_list(
 restrict_u * pres,
 int ipv6,
 u_int * pidx
 )
{
 for ( ; pres != ((void*)0); pres = pres->link) {
  send_restrict_entry(pres, ipv6, *pidx);
  (*pidx)++;
 }
}
