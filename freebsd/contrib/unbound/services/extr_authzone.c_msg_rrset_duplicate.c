
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {size_t dname_len; int dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_4__ {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int *) ;

__attribute__((used)) static int
msg_rrset_duplicate(struct dns_msg* msg, uint8_t* nm, size_t nmlen,
 uint16_t type, uint16_t dclass)
{
 size_t i;
 for(i=0; i<msg->rep->rrset_count; i++) {
  struct ub_packed_rrset_key* k = msg->rep->rrsets[i];
  if(ntohs(k->rk.type) == type && k->rk.dname_len == nmlen &&
   ntohs(k->rk.rrset_class) == dclass &&
   query_dname_compare(k->rk.dname, nm) == 0)
   return 1;
 }
 return 0;
}
