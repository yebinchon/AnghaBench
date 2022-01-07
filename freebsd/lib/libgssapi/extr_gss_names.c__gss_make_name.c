
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_name {int gn_mn; } ;
struct _gss_mechanism_name {int gmn_name; int * gmn_mech_oid; struct _gss_mech_switch* gmn_mech; } ;
struct _gss_mech_switch {int gm_mech_oid; } ;
typedef int gss_name_t ;


 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct _gss_mechanism_name*,int ) ;
 int free (struct _gss_name*) ;
 int gmn_link ;
 void* malloc (int) ;
 int memset (struct _gss_name*,int ,int) ;

struct _gss_name *
_gss_make_name(struct _gss_mech_switch *m, gss_name_t new_mn)
{
 struct _gss_name *name;
 struct _gss_mechanism_name *mn;

 name = malloc(sizeof(struct _gss_name));
 if (!name)
  return (0);
 memset(name, 0, sizeof(struct _gss_name));

 mn = malloc(sizeof(struct _gss_mechanism_name));
 if (!mn) {
  free(name);
  return (0);
 }

 SLIST_INIT(&name->gn_mn);
 mn->gmn_mech = m;
 mn->gmn_mech_oid = &m->gm_mech_oid;
 mn->gmn_name = new_mn;
 SLIST_INSERT_HEAD(&name->gn_mn, mn, gmn_link);

 return (name);
}
