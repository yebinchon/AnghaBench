
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct rrset_ref {int dummy; } ;
struct reply_info {int authoritative; int qdcount; scalar_t__ flags; } ;
struct regional {int dummy; } ;
struct query_info {int qclass; int qtype; int qname_len; int qname; } ;
struct TYPE_2__ {int * local_alias; int qclass; int qtype; int qname_len; int qname; } ;
struct dns_msg {struct reply_info* rep; TYPE_1__ qinfo; } ;


 int BIT_AA ;
 int BIT_QR ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int regional_alloc_init (struct regional*,int ,int ) ;
 scalar_t__ regional_alloc_zero (struct regional*,int) ;

__attribute__((used)) static struct dns_msg*
msg_create(struct regional* region, struct query_info* qinfo)
{
 struct dns_msg* msg = (struct dns_msg*)regional_alloc(region,
  sizeof(struct dns_msg));
 if(!msg)
  return ((void*)0);
 msg->qinfo.qname = regional_alloc_init(region, qinfo->qname,
  qinfo->qname_len);
 if(!msg->qinfo.qname)
  return ((void*)0);
 msg->qinfo.qname_len = qinfo->qname_len;
 msg->qinfo.qtype = qinfo->qtype;
 msg->qinfo.qclass = qinfo->qclass;
 msg->qinfo.local_alias = ((void*)0);

 msg->rep = (struct reply_info*)regional_alloc_zero(region,
  sizeof(struct reply_info)-sizeof(struct rrset_ref));
 if(!msg->rep)
  return ((void*)0);
 msg->rep->flags = (uint16_t)(BIT_QR | BIT_AA);
 msg->rep->authoritative = 1;
 msg->rep->qdcount = 1;

 return msg;
}
