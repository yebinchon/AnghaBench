
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef scalar_t__ ldns_status ;
typedef int ldns_pkt ;
typedef int ldns_output_format ;
typedef int ldns_buffer ;


 int LDNS_FREE (char*) ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ctime (scalar_t__*) ;
 int ldns_buffer_printf (int *,char*,...) ;
 scalar_t__ ldns_buffer_status (int *) ;
 scalar_t__ ldns_buffer_status_ok (int *) ;
 int ldns_pkt_additional (int const*) ;
 scalar_t__ ldns_pkt_ancount (int const*) ;
 int ldns_pkt_answer (int const*) ;
 scalar_t__ ldns_pkt_answerfrom (int const*) ;
 scalar_t__ ldns_pkt_arcount (int const*) ;
 int ldns_pkt_authority (int const*) ;
 scalar_t__ ldns_pkt_edns (int const*) ;
 scalar_t__ ldns_pkt_edns_data (int const*) ;
 scalar_t__ ldns_pkt_edns_do (int const*) ;
 int ldns_pkt_edns_extended_rcode (int const*) ;
 int ldns_pkt_edns_udp_size (int const*) ;
 int ldns_pkt_edns_version (int const*) ;
 int ldns_pkt_get_rcode (int const*) ;
 scalar_t__ ldns_pkt_nscount (int const*) ;
 scalar_t__ ldns_pkt_qdcount (int const*) ;
 int ldns_pkt_querytime (int const*) ;
 int ldns_pkt_question (int const*) ;
 scalar_t__ ldns_pkt_size (int const*) ;
 struct timeval ldns_pkt_timestamp (int const*) ;
 scalar_t__ ldns_pkt_tsig (int const*) ;
 scalar_t__ ldns_pktheader2buffer_str (int *,int const*) ;
 int ldns_rdf2buffer_str (int *,scalar_t__) ;
 char* ldns_rdf2str (scalar_t__) ;
 scalar_t__ ldns_rr2buffer_str_fmt (int *,int const*,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr (int ,scalar_t__) ;

ldns_status
ldns_pkt2buffer_str_fmt(ldns_buffer *output,
  const ldns_output_format *fmt, const ldns_pkt *pkt)
{
 uint16_t i;
 ldns_status status = LDNS_STATUS_OK;
 char *tmp;
 struct timeval time;
 time_t time_tt;

 if (!pkt) {
  ldns_buffer_printf(output, "null");
  return LDNS_STATUS_OK;
 }

 if (ldns_buffer_status_ok(output)) {
  status = ldns_pktheader2buffer_str(output, pkt);
  if (status != LDNS_STATUS_OK) {
   return status;
  }

  ldns_buffer_printf(output, "\n");

  ldns_buffer_printf(output, ";; QUESTION SECTION:\n;; ");


  for (i = 0; i < ldns_pkt_qdcount(pkt); i++) {
   status = ldns_rr2buffer_str_fmt(output, fmt,
           ldns_rr_list_rr(
            ldns_pkt_question(pkt), i));
   if (status != LDNS_STATUS_OK) {
    return status;
   }
  }
  ldns_buffer_printf(output, "\n");

  ldns_buffer_printf(output, ";; ANSWER SECTION:\n");
  for (i = 0; i < ldns_pkt_ancount(pkt); i++) {
   status = ldns_rr2buffer_str_fmt(output, fmt,
           ldns_rr_list_rr(
            ldns_pkt_answer(pkt), i));
   if (status != LDNS_STATUS_OK) {
    return status;
   }

  }
  ldns_buffer_printf(output, "\n");

  ldns_buffer_printf(output, ";; AUTHORITY SECTION:\n");

  for (i = 0; i < ldns_pkt_nscount(pkt); i++) {
   status = ldns_rr2buffer_str_fmt(output, fmt,
           ldns_rr_list_rr(
            ldns_pkt_authority(pkt), i));
   if (status != LDNS_STATUS_OK) {
    return status;
   }
  }
  ldns_buffer_printf(output, "\n");

  ldns_buffer_printf(output, ";; ADDITIONAL SECTION:\n");
  for (i = 0; i < ldns_pkt_arcount(pkt); i++) {
   status = ldns_rr2buffer_str_fmt(output, fmt,
           ldns_rr_list_rr(
            ldns_pkt_additional(pkt), i));
   if (status != LDNS_STATUS_OK) {
    return status;
   }

  }
  ldns_buffer_printf(output, "\n");

  ldns_buffer_printf(output, ";; Query time: %d msec\n",
    ldns_pkt_querytime(pkt));
  if (ldns_pkt_edns(pkt)) {
   ldns_buffer_printf(output,
       ";; EDNS: version %u; flags:",
       ldns_pkt_edns_version(pkt));
   if (ldns_pkt_edns_do(pkt)) {
    ldns_buffer_printf(output, " do");
   }


   if (ldns_pkt_edns_extended_rcode(pkt)) {
    ldns_buffer_printf(output, " ; ext-rcode: %d",
     (ldns_pkt_edns_extended_rcode(pkt) << 4 | ldns_pkt_get_rcode(pkt)));
   }
   ldns_buffer_printf(output, " ; udp: %u\n",
        ldns_pkt_edns_udp_size(pkt));

   if (ldns_pkt_edns_data(pkt)) {
    ldns_buffer_printf(output, ";; Data: ");
    (void)ldns_rdf2buffer_str(output,
         ldns_pkt_edns_data(pkt));
    ldns_buffer_printf(output, "\n");
   }
  }
  if (ldns_pkt_tsig(pkt)) {
   ldns_buffer_printf(output, ";; TSIG:\n;; ");
   (void) ldns_rr2buffer_str_fmt(
     output, fmt, ldns_pkt_tsig(pkt));
   ldns_buffer_printf(output, "\n");
  }
  if (ldns_pkt_answerfrom(pkt)) {
   tmp = ldns_rdf2str(ldns_pkt_answerfrom(pkt));
   ldns_buffer_printf(output, ";; SERVER: %s\n", tmp);
   LDNS_FREE(tmp);
  }
  time = ldns_pkt_timestamp(pkt);
  time_tt = (time_t)time.tv_sec;
  ldns_buffer_printf(output, ";; WHEN: %s",
    (char*)ctime(&time_tt));

  ldns_buffer_printf(output, ";; MSG SIZE  rcvd: %d\n",
    (int)ldns_pkt_size(pkt));
 } else {
  return ldns_buffer_status(output);
 }
 return status;
}
