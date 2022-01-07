
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWO ;
 int OID_AUTO ;
 int SYSCTL_DYN_IPF_AUTH (int ,int ,char*,int ,void*,int ,char*) ;
 int SYSCTL_DYN_IPF_FRAG (int ,int ,char*,int ,void*,int ,char*) ;
 int SYSCTL_DYN_IPF_NAT (int ,int ,char*,int ,void*,int ,char*) ;
 int SYSCTL_DYN_IPF_STATE (int ,int ,char*,int ,void*,int ,char*) ;
 int _net_inet_ipf ;
 int ipf_auth_defaultage ;
 int ipf_auth_size ;
 int ipf_auth_softc_t ;
 int ipf_auth_used ;
 int ipf_clist ;
 int ipf_frag_softc_t ;
 int ipf_nat_defage ;
 int ipf_nat_hostmap_sz ;
 int ipf_nat_maprules_sz ;
 int ipf_nat_rdrrules_sz ;
 int ipf_nat_softc_t ;
 int ipf_nat_table_max ;
 int ipf_nat_table_sz ;
 int ipf_state_max ;
 int ipf_state_size ;
 int ipf_state_softc_t ;
 int ipfr_ttl ;
 scalar_t__ offsetof (int ,int ) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static int
ipf_fbsd_sysctl_create(void)
{

 sysctl_ctx_init(&ipf_clist);

 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "fr_defnatage", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_defage), 0, "");
 SYSCTL_DYN_IPF_STATE(_net_inet_ipf, OID_AUTO, "fr_statesize", CTLFLAG_RWO,
     (void *)offsetof(ipf_state_softc_t, ipf_state_size), 0, "");
 SYSCTL_DYN_IPF_STATE(_net_inet_ipf, OID_AUTO, "fr_statemax", CTLFLAG_RWO,
     (void *)offsetof(ipf_state_softc_t, ipf_state_max), 0, "");
 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "ipf_nattable_max", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_table_max), 0, "");
 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "ipf_nattable_sz", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_table_sz), 0, "");
 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "ipf_natrules_sz", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_maprules_sz), 0, "");
 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "ipf_rdrrules_sz", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_rdrrules_sz), 0, "");
 SYSCTL_DYN_IPF_NAT(_net_inet_ipf, OID_AUTO, "ipf_hostmap_sz", CTLFLAG_RWO,
     (void *)offsetof(ipf_nat_softc_t, ipf_nat_hostmap_sz), 0, "");
 SYSCTL_DYN_IPF_AUTH(_net_inet_ipf, OID_AUTO, "fr_authsize", CTLFLAG_RWO,
     (void *)offsetof(ipf_auth_softc_t, ipf_auth_size), 0, "");
 SYSCTL_DYN_IPF_AUTH(_net_inet_ipf, OID_AUTO, "fr_authused", CTLFLAG_RD,
     (void *)offsetof(ipf_auth_softc_t, ipf_auth_used), 0, "");
 SYSCTL_DYN_IPF_AUTH(_net_inet_ipf, OID_AUTO, "fr_defaultauthage", CTLFLAG_RW,
     (void *)offsetof(ipf_auth_softc_t, ipf_auth_defaultage), 0, "");
 SYSCTL_DYN_IPF_FRAG(_net_inet_ipf, OID_AUTO, "fr_ipfrttl", CTLFLAG_RW,
     (void *)offsetof(ipf_frag_softc_t, ipfr_ttl), 0, "");
 return 0;
}
