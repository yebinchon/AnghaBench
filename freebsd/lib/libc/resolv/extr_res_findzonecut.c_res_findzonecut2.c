
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef union res_sockaddr_union {int dummy; } res_sockaddr_union ;
typedef int u_long ;
typedef int rrset_ns ;
typedef TYPE_1__* res_state ;
typedef int ns_class ;
struct TYPE_7__ {int pfcode; } ;


 int DPRINTF (char*) ;
 int INIT_LIST (int ) ;
 int NS_MAXDNAME ;
 int RES_EXHAUSTIVE ;
 int RES_PRF_ADD ;
 int RES_PRF_ANS ;
 int RES_PRF_AUTH ;
 int RES_PRF_HEAD1 ;
 int RES_PRF_HEAD2 ;
 int RES_PRF_HEADX ;
 int RES_PRF_QUES ;
 int errno ;
 int free_nsrrset (int *) ;
 int get_glue (TYPE_1__*,int ,int,int *) ;
 int get_ns (TYPE_1__*,char*,int ,int,int *) ;
 int get_soa (TYPE_1__*,char const*,int ,int,char*,size_t,char*,int,int *) ;
 int p_class (int ) ;
 int satisfy (TYPE_1__*,char*,int *,union res_sockaddr_union*,int) ;
 char* strerror (int ) ;

int
res_findzonecut2(res_state statp, const char *dname, ns_class class, int opts,
   char *zname, size_t zsize, union res_sockaddr_union *addrs,
   int naddrs)
{
 char mname[NS_MAXDNAME];
 u_long save_pfcode;
 rrset_ns nsrrs;
 int n;

 DPRINTF(("START dname='%s' class=%s, zsize=%ld, naddrs=%d",
   dname, p_class(class), (long)zsize, naddrs));
 save_pfcode = statp->pfcode;
 statp->pfcode |= RES_PRF_HEAD2 | RES_PRF_HEAD1 | RES_PRF_HEADX |
    RES_PRF_QUES | RES_PRF_ANS |
    RES_PRF_AUTH | RES_PRF_ADD;
 INIT_LIST(nsrrs);

 DPRINTF(("get the soa, and see if it has enough glue"));
 if ((n = get_soa(statp, dname, class, opts, zname, zsize,
    mname, sizeof mname, &nsrrs)) < 0 ||
     ((opts & RES_EXHAUSTIVE) == 0 &&
      (n = satisfy(statp, mname, &nsrrs, addrs, naddrs)) > 0))
  goto done;

 DPRINTF(("get the ns rrset and see if it has enough glue"));
 if ((n = get_ns(statp, zname, class, opts, &nsrrs)) < 0 ||
     ((opts & RES_EXHAUSTIVE) == 0 &&
      (n = satisfy(statp, mname, &nsrrs, addrs, naddrs)) > 0))
  goto done;

 DPRINTF(("get the missing glue and see if it's finally enough"));
 if ((n = get_glue(statp, class, opts, &nsrrs)) >= 0)
  n = satisfy(statp, mname, &nsrrs, addrs, naddrs);

 done:
 DPRINTF(("FINISH n=%d (%s)", n, (n < 0) ? strerror(errno) : "OK"));
 free_nsrrset(&nsrrs);
 statp->pfcode = save_pfcode;
 return (n);
}
