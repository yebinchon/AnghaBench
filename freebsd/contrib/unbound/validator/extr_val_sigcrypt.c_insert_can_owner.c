
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {size_t dname_len; scalar_t__* dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
typedef int sldns_buffer ;


 int dname_remove_label (scalar_t__**,size_t*) ;
 int dname_signame_label_count (scalar_t__*) ;
 int log_assert (int) ;
 int query_dname_tolower (scalar_t__*) ;
 scalar_t__* sldns_buffer_current (int *) ;
 int sldns_buffer_write (int *,scalar_t__*,size_t) ;

__attribute__((used)) static void
insert_can_owner(sldns_buffer* buf, struct ub_packed_rrset_key* k,
 uint8_t* sig, uint8_t** can_owner, size_t* can_owner_len)
{
 int rrsig_labels = (int)sig[3];
 int fqdn_labels = dname_signame_label_count(k->rk.dname);
 *can_owner = sldns_buffer_current(buf);
 if(rrsig_labels == fqdn_labels) {

  sldns_buffer_write(buf, k->rk.dname, k->rk.dname_len);
  query_dname_tolower(*can_owner);
  *can_owner_len = k->rk.dname_len;
  return;
 }
 log_assert(rrsig_labels < fqdn_labels);

 if(rrsig_labels < fqdn_labels) {
  int i;
  uint8_t* nm = k->rk.dname;
  size_t len = k->rk.dname_len;

  for(i=0; i<fqdn_labels-rrsig_labels; i++) {
   dname_remove_label(&nm, &len);
  }
  *can_owner_len = len+2;
  sldns_buffer_write(buf, (uint8_t*)"\001*", 2);
  sldns_buffer_write(buf, nm, len);
  query_dname_tolower(*can_owner);
 }
}
