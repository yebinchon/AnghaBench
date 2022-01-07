
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reply_info {scalar_t__ an_numrrsets; int flags; } ;
struct TYPE_3__ {scalar_t__ qtype; int qname_len; int qname; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct msgreply_entry {TYPE_1__ key; TYPE_2__ entry; } ;
struct delegpt_ns {int got4; int got6; int resolved; } ;
struct delegpt {int dummy; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 struct delegpt_ns* delegpt_find_ns (struct delegpt*,int ,int ) ;

void delegpt_add_neg_msg(struct delegpt* dp, struct msgreply_entry* msg)
{
 struct reply_info* rep = (struct reply_info*)msg->entry.data;
 if(!rep) return;


 if(FLAGS_GET_RCODE(rep->flags) != 0 || rep->an_numrrsets == 0) {
  struct delegpt_ns* ns = delegpt_find_ns(dp, msg->key.qname,
   msg->key.qname_len);
  if(ns) {
   if(msg->key.qtype == LDNS_RR_TYPE_A)
    ns->got4 = 1;
   else if(msg->key.qtype == LDNS_RR_TYPE_AAAA)
    ns->got6 = 1;
   if(ns->got4 && ns->got6)
    ns->resolved = 1;
  }
 }
}
