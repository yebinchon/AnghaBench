
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct rrset_cache {int dummy; } ;
struct reply_info {size_t rrset_count; TYPE_3__** rrsets; } ;
struct packed_rrset_data {scalar_t__ security; } ;
struct module_env {int * now; } ;
struct TYPE_5__ {int dname; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ rk; TYPE_1__ entry; } ;


 scalar_t__ dname_subdomain_c (int ,int *) ;
 int rrset_update_sec_status (struct rrset_cache*,TYPE_3__*,int ) ;
 scalar_t__ sec_status_insecure ;
 scalar_t__ sec_status_unchecked ;

void
val_mark_insecure(struct reply_info* rep, uint8_t* kname,
 struct rrset_cache* r, struct module_env* env)
{
 size_t i;
 struct packed_rrset_data* d;
 for(i=0; i<rep->rrset_count; i++) {
  d = (struct packed_rrset_data*)rep->rrsets[i]->entry.data;
  if(d->security == sec_status_unchecked &&
     dname_subdomain_c(rep->rrsets[i]->rk.dname, kname)) {

   d->security = sec_status_insecure;
   rrset_update_sec_status(r, rep->rrsets[i], *env->now);
  }
 }
}
