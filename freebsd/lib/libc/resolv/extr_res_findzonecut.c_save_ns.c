
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int rrset_ns ;
struct TYPE_8__ {int * name; scalar_t__ flags; int addrs; } ;
typedef TYPE_1__ rr_ns ;
typedef int res_state ;
typedef int ns_sect ;
typedef int ns_rr ;
typedef int ns_msg ;
typedef scalar_t__ ns_class ;


 int APPEND (int ,TYPE_1__*,int ) ;
 int DPRINTF (char*) ;
 int INIT_LINK (TYPE_1__*,int ) ;
 int INIT_LIST (int ) ;
 int MAXDNAME ;
 TYPE_1__* find_ns (int *,int ) ;
 int free (TYPE_1__*) ;
 int link ;
 TYPE_1__* malloc (int) ;
 int ns_msg_base (int ) ;
 int ns_msg_count (int ,int ) ;
 int ns_msg_end (int ) ;
 scalar_t__ ns_name_uncompress (int ,int ,int const*,char*,int) ;
 int ns_o_query ;
 scalar_t__ ns_parserr (int *,int ,int,int *) ;
 scalar_t__ ns_rr_class (int ) ;
 int ns_rr_name (int ) ;
 int * ns_rr_rdata (int ) ;
 scalar_t__ ns_rr_type (int ) ;
 int ns_s_ar ;
 int ns_samename (int ,char const*) ;
 scalar_t__ ns_t_ns ;
 int p_class (scalar_t__) ;
 int p_section (int ,int ) ;
 scalar_t__ save_a (int ,int *,int ,int *,scalar_t__,int,TYPE_1__*) ;
 int * strdup (char*) ;

__attribute__((used)) static int
save_ns(res_state statp, ns_msg *msg, ns_sect sect,
 const char *owner, ns_class class, int opts,
 rrset_ns *nsrrsp)
{
 int i;

 for (i = 0; i < ns_msg_count(*msg, sect); i++) {
  char tname[MAXDNAME];
  const u_char *rdata;
  rr_ns *nsrr;
  ns_rr rr;

  if (ns_parserr(msg, sect, i, &rr) < 0) {
   DPRINTF(("save_ns: ns_parserr(%s, %d) failed",
     p_section(sect, ns_o_query), i));
   return (-1);
  }
  if (ns_rr_type(rr) != ns_t_ns ||
      ns_rr_class(rr) != class ||
      ns_samename(ns_rr_name(rr), owner) != 1)
   continue;
  nsrr = find_ns(nsrrsp, ns_rr_name(rr));
  if (nsrr == ((void*)0)) {
   nsrr = malloc(sizeof *nsrr);
   if (nsrr == ((void*)0)) {
    DPRINTF(("save_ns: malloc failed"));
    return (-1);
   }
   rdata = ns_rr_rdata(rr);
   if (ns_name_uncompress(ns_msg_base(*msg),
            ns_msg_end(*msg), rdata,
            tname, sizeof tname) < 0) {
    DPRINTF(("save_ns: ns_name_uncompress failed")
     );
    free(nsrr);
    return (-1);
   }
   nsrr->name = strdup(tname);
   if (nsrr->name == ((void*)0)) {
    DPRINTF(("save_ns: strdup failed"));
    free(nsrr);
    return (-1);
   }
   INIT_LINK(nsrr, link);
   INIT_LIST(nsrr->addrs);
   nsrr->flags = 0;
   APPEND(*nsrrsp, nsrr, link);
  }
  if (save_a(statp, msg, ns_s_ar,
      nsrr->name, class, opts, nsrr) < 0) {
   DPRINTF(("save_ns: save_r('%s', %s) failed",
     nsrr->name, p_class(class)));
   return (-1);
  }
 }
 return (0);
}
