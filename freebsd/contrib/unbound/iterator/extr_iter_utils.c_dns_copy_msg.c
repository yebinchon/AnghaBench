
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regional {int dummy; } ;
struct TYPE_2__ {int qname_len; int qname; } ;
struct dns_msg {int rep; TYPE_1__ qinfo; } ;


 scalar_t__ regional_alloc (struct regional*,int) ;
 int regional_alloc_init (struct regional*,int ,int ) ;
 int reply_info_copy (int ,int *,struct regional*) ;

struct dns_msg*
dns_copy_msg(struct dns_msg* from, struct regional* region)
{
 struct dns_msg* m = (struct dns_msg*)regional_alloc(region,
  sizeof(struct dns_msg));
 if(!m)
  return ((void*)0);
 m->qinfo = from->qinfo;
 if(!(m->qinfo.qname = regional_alloc_init(region, from->qinfo.qname,
  from->qinfo.qname_len)))
  return ((void*)0);
 if(!(m->rep = reply_info_copy(from->rep, ((void*)0), region)))
  return ((void*)0);
 return m;
}
