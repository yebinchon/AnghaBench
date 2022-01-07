
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int global_dns_root ;
 int ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int ,int *) ;
 int ldns_rr_new_frm_str (int **,char*,int ,int *,int *) ;

void
init_root(void)
{
 ldns_rr *r;

 global_dns_root = ldns_rr_list_new();

 (void)ldns_rr_new_frm_str(&r, "A.ROOT-SERVERS.NET.      3600000      A     198.41.0.4", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "A.ROOT-SERVERS.NET.      3600000      AAAA  2001:503:BA3E::2:30", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "B.ROOT-SERVERS.NET.      3600000      A     192.228.79.201", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "C.ROOT-SERVERS.NET.      3600000      A     192.33.4.12", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "D.ROOT-SERVERS.NET.      3600000      A     128.8.10.90", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "E.ROOT-SERVERS.NET.      3600000      A     192.203.230.10", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "F.ROOT-SERVERS.NET.      3600000      A     192.5.5.241", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "F.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:2F::F", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "G.ROOT-SERVERS.NET.      3600000      A     192.112.36.4", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "H.ROOT-SERVERS.NET.      3600000      A     128.63.2.53", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "H.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:1::803F:235", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "I.ROOT-SERVERS.NET.      3600000      A     192.36.148.17", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "J.ROOT-SERVERS.NET.      3600000      A     192.58.128.30", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "J.ROOT-SERVERS.NET.      3600000      AAAA  2001:503:C27::2:30", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "K.ROOT-SERVERS.NET.      3600000      A     193.0.14.129 ", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "K.ROOT-SERVERS.NET.      3600000      AAAA  2001:7FD::1", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "L.ROOT-SERVERS.NET.      3600000      A     199.7.83.42", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "L.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:3::42   ", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "M.ROOT-SERVERS.NET.      3600000      A     202.12.27.33", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
 (void)ldns_rr_new_frm_str(&r, "M.ROOT-SERVERS.NET.      3600000      AAAA  2001:DC3::35", 0, ((void*)0), ((void*)0));
 ldns_rr_list_push_rr(global_dns_root, r);
}
