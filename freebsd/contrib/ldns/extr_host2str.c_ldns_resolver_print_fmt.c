
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_output_format ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
typedef int FILE ;




 int fprintf (int *,char*,...) ;
 int ldns_rdf_print (int *,int *) ;
 int ldns_resolver_debug (int const*) ;
 int ldns_resolver_defnames (int const*) ;
 int ldns_resolver_dnsrch (int const*) ;
 int ldns_resolver_dnssec (int const*) ;
 int ldns_resolver_dnssec_anchors (int const*) ;
 int ldns_resolver_dnssec_cd (int const*) ;
 int * ldns_resolver_domain (int const*) ;
 scalar_t__ ldns_resolver_edns_udp_size (int const*) ;
 int ldns_resolver_fail (int const*) ;
 int ldns_resolver_fallback (int const*) ;
 int ldns_resolver_igntc (int const*) ;
 scalar_t__ ldns_resolver_ip6 (int const*) ;
 size_t ldns_resolver_nameserver_count (int const*) ;
 int ** ldns_resolver_nameservers (int const*) ;
 scalar_t__ ldns_resolver_port (int const*) ;
 int ldns_resolver_random (int const*) ;
 int ldns_resolver_recursive (int const*) ;
 scalar_t__ ldns_resolver_retrans (int const*) ;
 scalar_t__ ldns_resolver_retry (int const*) ;
 size_t* ldns_resolver_rtt (int const*) ;
 int ** ldns_resolver_searchlist (int const*) ;
 size_t ldns_resolver_searchlist_count (int const*) ;
 TYPE_1__ ldns_resolver_timeout (int const*) ;
 char* ldns_resolver_tsig_algorithm (int const*) ;
 char* ldns_resolver_tsig_keyname (int const*) ;
 int ldns_resolver_usevc (int const*) ;
 int ldns_rr_list_print_fmt (int *,int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int ) ;

void
ldns_resolver_print_fmt(FILE *output,
  const ldns_output_format *fmt, const ldns_resolver *r)
{
 uint16_t i;
 ldns_rdf **n;
 ldns_rdf **s;
 size_t *rtt;
 if (!r) {
  return;
 }
 n = ldns_resolver_nameservers(r);
 s = ldns_resolver_searchlist(r);
 rtt = ldns_resolver_rtt(r);

 fprintf(output, "port: %d\n", (int)ldns_resolver_port(r));
 fprintf(output, "edns0 size: %d\n", (int)ldns_resolver_edns_udp_size(r));
 fprintf(output, "use ip6: %d\n", (int)ldns_resolver_ip6(r));

 fprintf(output, "recursive: %d\n", ldns_resolver_recursive(r));
 fprintf(output, "usevc: %d\n", ldns_resolver_usevc(r));
 fprintf(output, "igntc: %d\n", ldns_resolver_igntc(r));
 fprintf(output, "fail: %d\n", ldns_resolver_fail(r));
 fprintf(output, "retry: %d\n", (int)ldns_resolver_retry(r));
 fprintf(output, "retrans: %d\n", (int)ldns_resolver_retrans(r));
 fprintf(output, "fallback: %d\n", ldns_resolver_fallback(r));
 fprintf(output, "random: %d\n", ldns_resolver_random(r));
 fprintf(output, "timeout: %d\n", (int)ldns_resolver_timeout(r).tv_sec);
 fprintf(output, "dnssec: %d\n", ldns_resolver_dnssec(r));
 fprintf(output, "dnssec cd: %d\n", ldns_resolver_dnssec_cd(r));
 fprintf(output, "trust anchors (%d listed):\n",
  (int)ldns_rr_list_rr_count(ldns_resolver_dnssec_anchors(r)));
 ldns_rr_list_print_fmt(output, fmt, ldns_resolver_dnssec_anchors(r));
 fprintf(output, "tsig: %s %s\n",
                ldns_resolver_tsig_keyname(r)?ldns_resolver_tsig_keyname(r):"-",
                ldns_resolver_tsig_algorithm(r)?ldns_resolver_tsig_algorithm(r):"-");
 fprintf(output, "debug: %d\n", ldns_resolver_debug(r));

 fprintf(output, "default domain: ");
 ldns_rdf_print(output, ldns_resolver_domain(r));
 fprintf(output, "\n");
 fprintf(output, "apply default domain: %d\n", ldns_resolver_defnames(r));

 fprintf(output, "searchlist (%d listed):\n", (int)ldns_resolver_searchlist_count(r));
 for (i = 0; i < ldns_resolver_searchlist_count(r); i++) {
  fprintf(output, "\t");
  ldns_rdf_print(output, s[i]);
  fprintf(output, "\n");
 }
 fprintf(output, "apply search list: %d\n", ldns_resolver_dnsrch(r));

 fprintf(output, "nameservers (%d listed):\n", (int)ldns_resolver_nameserver_count(r));
 for (i = 0; i < ldns_resolver_nameserver_count(r); i++) {
  fprintf(output, "\t");
  ldns_rdf_print(output, n[i]);

  switch ((int)rtt[i]) {
   case 128:
   fprintf(output, " - reachable\n");
   break;
   case 129:
   fprintf(output, " - unreachable\n");
   break;
  }
 }
}
