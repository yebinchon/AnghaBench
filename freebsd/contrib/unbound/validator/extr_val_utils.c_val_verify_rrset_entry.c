
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct val_env {int dummy; } ;
struct TYPE_6__ {int data; struct ub_packed_rrset_key* key; } ;
struct TYPE_5__ {int dname_len; int dname; scalar_t__ flags; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct key_entry_key {int namelen; int name; int key_class; TYPE_1__ entry; } ;
struct key_entry_data {int algo; int rrset_data; int rrset_type; } ;
typedef int sldns_pkt_section ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 void* htons (int ) ;
 int val_verify_rrset (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int ,char**,int ,struct module_qstate*) ;

enum sec_status
val_verify_rrset_entry(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key* rrset, struct key_entry_key* kkey,
 char** reason, sldns_pkt_section section, struct module_qstate* qstate)
{

 struct ub_packed_rrset_key dnskey;
 struct key_entry_data* kd = (struct key_entry_data*)kkey->entry.data;
 enum sec_status sec;
 dnskey.rk.type = htons(kd->rrset_type);
 dnskey.rk.rrset_class = htons(kkey->key_class);
 dnskey.rk.flags = 0;
 dnskey.rk.dname = kkey->name;
 dnskey.rk.dname_len = kkey->namelen;
 dnskey.entry.key = &dnskey;
 dnskey.entry.data = kd->rrset_data;
 sec = val_verify_rrset(env, ve, rrset, &dnskey, kd->algo, reason,
  section, qstate);
 return sec;
}
