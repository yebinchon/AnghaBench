
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_dns_root ;
 int ldns_rr_list_deep_free (int ) ;

void
clear_root(void)
{
 ldns_rr_list_deep_free(global_dns_root);
}
