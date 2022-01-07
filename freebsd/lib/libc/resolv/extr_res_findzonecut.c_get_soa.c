
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int rrset_ns ;
typedef int res_state ;
typedef int ns_sect ;
typedef int ns_rr ;
typedef int ns_msg ;
typedef scalar_t__ ns_class ;


 int DPRINTF (char*) ;
 int EDESTADDRREQ ;
 int EMSGSIZE ;
 int EPROTOTYPE ;
 int NS_MAXDNAME ;
 int NS_MAXMSG ;
 int abort () ;
 int do_query (int ,char const*,scalar_t__,scalar_t__,int *,int *) ;
 int errno ;
 int free (int *) ;
 int * malloc (int ) ;
 int ns_f_rcode ;
 scalar_t__ ns_makecanon (char const*,char*,int) ;
 int ns_msg_count (int ,int) ;
 int ns_msg_end (int ) ;
 scalar_t__ ns_msg_getflag (int ,int ) ;
 scalar_t__ ns_name_uncompress (int *,int ,int const*,char*,size_t) ;
 int ns_o_query ;
 scalar_t__ ns_parserr (int *,int,int,int *) ;
 scalar_t__ ns_r_noerror ;
 scalar_t__ ns_rr_class (int ) ;
 char* ns_rr_name (int ) ;
 int * ns_rr_rdata (int ) ;
 scalar_t__ ns_rr_type (int ) ;

 int ns_s_max ;

 int ns_samedomain (char const*,char const*) ;
 int ns_samename (char const*,char const*) ;
 scalar_t__ ns_t_cname ;
 scalar_t__ ns_t_dname ;
 scalar_t__ ns_t_soa ;
 int p_class (scalar_t__) ;
 int p_section (int,int ) ;
 scalar_t__ save_ns (int ,int *,int,char*,scalar_t__,int,int *) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
get_soa(res_state statp, const char *dname, ns_class class, int opts,
 char *zname, size_t zsize, char *mname, size_t msize,
 rrset_ns *nsrrsp)
{
 char tname[NS_MAXDNAME];
 u_char *resp = ((void*)0);
 int n, i, ancount, nscount;
 ns_sect sect;
 ns_msg msg;
 u_int rcode;






 if (ns_makecanon(dname, tname, sizeof tname) < 0)
  goto cleanup;
 dname = tname;

 resp = malloc(NS_MAXMSG);
 if (resp == ((void*)0))
  goto cleanup;


 for (;;) {

  while (*dname == '.')
   dname++;


  n = do_query(statp, dname, class, ns_t_soa, resp, &msg);
  if (n < 0) {
   DPRINTF(("get_soa: do_query('%s', %s) failed (%d)",
     dname, p_class(class), n));
   goto cleanup;
  }
  if (n > 0) {
   DPRINTF(("get_soa: CNAME or DNAME found"));
   sect = ns_s_max, n = 0;
  } else {
   rcode = ns_msg_getflag(msg, ns_f_rcode);
   ancount = ns_msg_count(msg, 129);
   nscount = ns_msg_count(msg, 128);
   if (ancount > 0 && rcode == ns_r_noerror)
    sect = 129, n = ancount;
   else if (nscount > 0)
    sect = 128, n = nscount;
   else
    sect = ns_s_max, n = 0;
  }
  for (i = 0; i < n; i++) {
   const char *t;
   const u_char *rdata;
   ns_rr rr;

   if (ns_parserr(&msg, sect, i, &rr) < 0) {
    DPRINTF(("get_soa: ns_parserr(%s, %d) failed",
      p_section(sect, ns_o_query), i));
    goto cleanup;
   }
   if (ns_rr_type(rr) == ns_t_cname ||
       ns_rr_type(rr) == ns_t_dname)
    break;
   if (ns_rr_type(rr) != ns_t_soa ||
       ns_rr_class(rr) != class)
    continue;
   t = ns_rr_name(rr);
   switch (sect) {
   case 129:
    if (ns_samedomain(dname, t) == 0) {
     DPRINTF(
        ("get_soa: ns_samedomain('%s', '%s') == 0",
      dname, t)
      );
     errno = EPROTOTYPE;
     goto cleanup;
    }
    break;
   case 128:
    if (ns_samename(dname, t) == 1 ||
        ns_samedomain(dname, t) == 0) {
     DPRINTF(
         ("get_soa: ns_samename() || !ns_samedomain('%s', '%s')",
      dname, t)
      );
     errno = EPROTOTYPE;
     goto cleanup;
    }
    break;
   default:
    abort();
   }
   if (strlen(t) + 1 > zsize) {
    DPRINTF(("get_soa: zname(%lu) too small (%lu)",
      (unsigned long)zsize,
      (unsigned long)strlen(t) + 1));
    errno = EMSGSIZE;
    goto cleanup;
   }
   strcpy(zname, t);
   rdata = ns_rr_rdata(rr);
   if (ns_name_uncompress(resp, ns_msg_end(msg), rdata,
            mname, msize) < 0) {
    DPRINTF(("get_soa: ns_name_uncompress failed")
     );
    goto cleanup;
   }
   if (save_ns(statp, &msg, 128,
        zname, class, opts, nsrrsp) < 0) {
    DPRINTF(("get_soa: save_ns failed"));
    goto cleanup;
   }
   free(resp);
   return (0);
  }


  if (*dname == '\0')
   break;


  while (*dname != '.') {
   if (*dname == '\\')
    if (*++dname == '\0') {
     errno = EMSGSIZE;
     goto cleanup;
    }
   dname++;
  }
 }
 DPRINTF(("get_soa: out of labels"));
 errno = EDESTADDRREQ;
 cleanup:
 if (resp != ((void*)0))
  free(resp);
 return (-1);
}
