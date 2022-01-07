
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int ;
struct TYPE_4__ {scalar_t__ r_section; int r_ttl; scalar_t__ r_type; scalar_t__ r_class; int r_dname; } ;
typedef TYPE_1__ ns_updrec ;
typedef scalar_t__ ns_type ;
typedef scalar_t__ ns_sect ;
typedef scalar_t__ ns_class ;


 int INIT_LINK (TYPE_1__*,int ) ;
 scalar_t__ calloc (int,int) ;
 int free (char*) ;
 int r_glink ;
 int r_link ;
 int strdup (char const*) ;

ns_updrec *
res_mkupdrec(int section, const char *dname,
      u_int class, u_int type, u_long ttl) {
 ns_updrec *rrecp = (ns_updrec *)calloc(1, sizeof(ns_updrec));

 if (!rrecp || !(rrecp->r_dname = strdup(dname))) {
  if (rrecp)
   free((char *)rrecp);
  return (((void*)0));
 }
 INIT_LINK(rrecp, r_link);
 INIT_LINK(rrecp, r_glink);
  rrecp->r_class = (ns_class)class;
 rrecp->r_type = (ns_type)type;
 rrecp->r_ttl = ttl;
 rrecp->r_section = (ns_sect)section;
 return (rrecp);
}
