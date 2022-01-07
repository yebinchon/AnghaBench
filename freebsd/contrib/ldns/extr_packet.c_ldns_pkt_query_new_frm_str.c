
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_pkt ;


 int ldns_pkt_query_new_frm_str_internal (int **,char const*,int ,int ,int ,int *) ;

ldns_status
ldns_pkt_query_new_frm_str(ldns_pkt **p, const char *name,
 ldns_rr_type rr_type, ldns_rr_class rr_class, uint16_t flags)
{
 return ldns_pkt_query_new_frm_str_internal(p, name, rr_type,
  rr_class, flags, ((void*)0));
}
