
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DS ;
 struct trust_anchor* anchor_store_new_key (struct val_anchors*,int *,int ,int ,int *,int ) ;
 int free (int *) ;
 int log_err (char*,char const*) ;
 int * sldns_str2wire_dname (char const*,size_t*) ;

__attribute__((used)) static struct trust_anchor*
anchor_insert_insecure(struct val_anchors* anchors, const char* str)
{
 struct trust_anchor* ta;
 size_t dname_len = 0;
 uint8_t* nm = sldns_str2wire_dname(str, &dname_len);
 if(!nm) {
  log_err("parse error in domain name '%s'", str);
  return ((void*)0);
 }
 ta = anchor_store_new_key(anchors, nm, LDNS_RR_TYPE_DS,
  LDNS_RR_CLASS_IN, ((void*)0), 0);
 free(nm);
 return ta;
}
