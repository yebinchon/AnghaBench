
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int rrset_ns ;
struct TYPE_7__ {int flags; int name; int addrs; } ;
typedef TYPE_1__ rr_ns ;
typedef int res_state ;
typedef int ns_msg ;
typedef int ns_class ;


 int DPRINTF (char*) ;
 scalar_t__ EMPTY (int ) ;
 TYPE_1__* HEAD (int ) ;
 TYPE_1__* NEXT (TYPE_1__*,int ) ;
 int NS_MAXMSG ;
 int RR_NS_HAVE_V4 ;
 int RR_NS_HAVE_V6 ;
 int do_query (int ,int ,int ,int ,int *,int *) ;
 int free (int *) ;
 int free_nsrr (int *,TYPE_1__*) ;
 int link ;
 int * malloc (int ) ;
 int ns_s_an ;
 int ns_t_a ;
 int ns_t_aaaa ;
 int p_class (int ) ;
 scalar_t__ save_a (int ,int *,int ,int ,int ,int,TYPE_1__*) ;

__attribute__((used)) static int
get_glue(res_state statp, ns_class class, int opts, rrset_ns *nsrrsp) {
 rr_ns *nsrr, *nsrr_n;
 u_char *resp;

 resp = malloc(NS_MAXMSG);
 if (resp == ((void*)0))
  return(-1);


 for (nsrr = HEAD(*nsrrsp); nsrr != ((void*)0); nsrr = nsrr_n) {
  ns_msg msg;
  int n;

  nsrr_n = NEXT(nsrr, link);

  if ((nsrr->flags & RR_NS_HAVE_V4) == 0) {
   n = do_query(statp, nsrr->name, class, ns_t_a,
         resp, &msg);
   if (n < 0) {
    DPRINTF(
           ("get_glue: do_query('%s', %s') failed",
     nsrr->name, p_class(class)));
    goto cleanup;
   }
   if (n > 0) {
    DPRINTF((
   "get_glue: do_query('%s', %s') CNAME or DNAME found",
      nsrr->name, p_class(class)));
   }
   if (save_a(statp, &msg, ns_s_an, nsrr->name, class,
       opts, nsrr) < 0) {
    DPRINTF(("get_glue: save_r('%s', %s) failed",
      nsrr->name, p_class(class)));
    goto cleanup;
   }
  }

  if ((nsrr->flags & RR_NS_HAVE_V6) == 0) {
   n = do_query(statp, nsrr->name, class, ns_t_aaaa,
         resp, &msg);
   if (n < 0) {
    DPRINTF(
           ("get_glue: do_query('%s', %s') failed",
     nsrr->name, p_class(class)));
    goto cleanup;
   }
   if (n > 0) {
    DPRINTF((
   "get_glue: do_query('%s', %s') CNAME or DNAME found",
      nsrr->name, p_class(class)));
   }
   if (save_a(statp, &msg, ns_s_an, nsrr->name, class,
       opts, nsrr) < 0) {
    DPRINTF(("get_glue: save_r('%s', %s) failed",
      nsrr->name, p_class(class)));
    goto cleanup;
   }
  }


  if (EMPTY(nsrr->addrs)) {
   DPRINTF(("get_glue: removing empty '%s' NS",
     nsrr->name));
   free_nsrr(nsrrsp, nsrr);
  }
 }
 free(resp);
 return (0);

 cleanup:
 free(resp);
 return (-1);
}
