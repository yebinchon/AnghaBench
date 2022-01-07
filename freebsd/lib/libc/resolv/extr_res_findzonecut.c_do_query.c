
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int res_state ;
typedef int ns_type ;
typedef int ns_rr ;
typedef int ns_msg ;
typedef scalar_t__ ns_class ;


 int DPRINTF (char*) ;
 int EMSGSIZE ;
 int NS_MAXMSG ;
 int NS_PACKETSZ ;
 int errno ;
 scalar_t__ ns_initparse (int *,int,int *) ;
 int ns_msg_count (int ,int ) ;
 int ns_o_query ;
 scalar_t__ ns_parserr (int *,int ,int,int *) ;
 scalar_t__ ns_rr_class (int ) ;
 scalar_t__ ns_rr_type (int ) ;
 int ns_s_an ;
 scalar_t__ ns_t_cname ;
 scalar_t__ ns_t_dname ;
 int res_nmkquery (int ,int ,char const*,scalar_t__,int ,int *,int ,int *,int *,int) ;
 int res_nsend (int ,int *,int,int *,int ) ;

__attribute__((used)) static int
do_query(res_state statp, const char *dname, ns_class class, ns_type qtype,
  u_char *resp, ns_msg *msg)
{
 u_char req[NS_PACKETSZ];
 int i, n;

 n = res_nmkquery(statp, ns_o_query, dname, class, qtype,
    ((void*)0), 0, ((void*)0), req, NS_PACKETSZ);
 if (n < 0) {
  DPRINTF(("do_query: res_nmkquery failed"));
  return (-1);
 }
 n = res_nsend(statp, req, n, resp, NS_MAXMSG);
 if (n < 0) {
  DPRINTF(("do_query: res_nsend failed"));
  return (-1);
 }
 if (n == 0) {
  DPRINTF(("do_query: res_nsend returned 0"));
  errno = EMSGSIZE;
  return (-1);
 }
 if (ns_initparse(resp, n, msg) < 0) {
  DPRINTF(("do_query: ns_initparse failed"));
  return (-1);
 }
 n = 0;
 for (i = 0; i < ns_msg_count(*msg, ns_s_an); i++) {
  ns_rr rr;

  if (ns_parserr(msg, ns_s_an, i, &rr) < 0) {
   DPRINTF(("do_query: ns_parserr failed"));
   return (-1);
  }
  n += (ns_rr_class(rr) == class &&
        (ns_rr_type(rr) == ns_t_cname ||
         ns_rr_type(rr) == ns_t_dname));
 }
 return (n);
}
