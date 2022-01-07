
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct trust_anchor {TYPE_2__* autr; void* numDNSKEY; void* numDS; struct ub_packed_rrset_key* dnskey_rrset; struct ub_packed_rrset_key* ds_rrset; } ;
struct TYPE_4__ {int keys; } ;


 void* assemble_iterate_count (int ,int ) ;
 int assemble_iterate_dnskey ;
 int assemble_iterate_ds ;
 scalar_t__ assemble_iterate_hasfirst (int ,int ) ;
 int autr_rrset_delete (struct ub_packed_rrset_key*) ;
 void* packed_rrset_heap_data (int ,int ) ;
 struct ub_packed_rrset_key* ub_packed_rrset_heap_key (int ,int ) ;

__attribute__((used)) static int
autr_assemble(struct trust_anchor* tp)
{
 struct ub_packed_rrset_key* ubds=((void*)0), *ubdnskey=((void*)0);




 if(assemble_iterate_hasfirst(assemble_iterate_ds, tp->autr->keys)) {
  ubds = ub_packed_rrset_heap_key(
   assemble_iterate_ds, tp->autr->keys);
  if(!ubds)
   goto error_cleanup;
  ubds->entry.data = packed_rrset_heap_data(
   assemble_iterate_ds, tp->autr->keys);
  if(!ubds->entry.data)
   goto error_cleanup;
 }


 if(assemble_iterate_hasfirst(assemble_iterate_dnskey, tp->autr->keys)) {
  ubdnskey = ub_packed_rrset_heap_key(
   assemble_iterate_dnskey, tp->autr->keys);
  if(!ubdnskey)
   goto error_cleanup;
  ubdnskey->entry.data = packed_rrset_heap_data(
   assemble_iterate_dnskey, tp->autr->keys);
  if(!ubdnskey->entry.data) {
  error_cleanup:
   autr_rrset_delete(ubds);
   autr_rrset_delete(ubdnskey);
   return 0;
  }
 }






 autr_rrset_delete(tp->ds_rrset);
 autr_rrset_delete(tp->dnskey_rrset);


 tp->ds_rrset = ubds;
 tp->dnskey_rrset = ubdnskey;
 tp->numDS = assemble_iterate_count(assemble_iterate_ds,
  tp->autr->keys);
 tp->numDNSKEY = assemble_iterate_count(assemble_iterate_dnskey,
  tp->autr->keys);
 return 1;
}
