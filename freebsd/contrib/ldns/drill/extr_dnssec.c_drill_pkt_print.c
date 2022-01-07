
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_resolver ;
typedef int ldns_pkt ;
typedef int FILE ;


 int LDNS_FREE (char*) ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_SECTION_ANSWER ;
 int fprintf (int *,char*,...) ;
 int * ldns_get_rr_list_name_by_addr (int *,int ,int ,int ) ;
 int ldns_pkt_answerfrom (int *) ;
 scalar_t__ ldns_pkt_querytime (int *) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 scalar_t__ ldns_pkt_size (int *) ;
 char* ldns_rdf2str (int ) ;
 int ldns_rdf_print (int *,int ) ;
 scalar_t__ ldns_resolver_port (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_print (int *,int *) ;
 int ldns_rr_list_rr (int *,int ) ;
 int ldns_rr_rdf (int ,int ) ;
 int verbosity ;

void
drill_pkt_print(FILE *fd, ldns_resolver *r, ldns_pkt *p)
{
 ldns_rr_list *new_nss;
 ldns_rr_list *hostnames;
 char *answerfrom_str;

 if (verbosity < 5) {
  return;
 }

 hostnames = ldns_get_rr_list_name_by_addr(r, ldns_pkt_answerfrom(p), 0, 0);

 new_nss = ldns_pkt_rr_list_by_type(p,
   LDNS_RR_TYPE_NS, LDNS_SECTION_ANSWER);
 ldns_rr_list_print(fd, new_nss);
 ldns_rr_list_deep_free(new_nss);

 fprintf(fd, ";; Received %d bytes from %s#%d(",
   (int) ldns_pkt_size(p),
   ldns_rdf2str(ldns_pkt_answerfrom(p)),
   (int) ldns_resolver_port(r));

 if (hostnames) {
  ldns_rdf_print(fd,
    ldns_rr_rdf(ldns_rr_list_rr(hostnames, 0), 0));
  ldns_rr_list_deep_free(hostnames);
 } else {
  answerfrom_str = ldns_rdf2str(ldns_pkt_answerfrom(p));
  if (answerfrom_str) {
   fprintf(fd, "%s", answerfrom_str);
   LDNS_FREE(answerfrom_str);
  }
 }
 fprintf(fd, ") in %u ms\n\n", (unsigned int)ldns_pkt_querytime(p));
}
