
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _gss_name {int gn_mn; } ;
struct _gss_mechanism_name {int gmn_name; int * gmn_mech_oid; TYPE_1__* gmn_mech; } ;
typedef TYPE_1__* gssapi_mech_interface ;
typedef int gss_name_t ;
struct TYPE_3__ {int gm_mech_oid; } ;


 int HEIM_SLIST_INIT (int *) ;
 int HEIM_SLIST_INSERT_HEAD (int *,struct _gss_mechanism_name*,int ) ;
 int free (struct _gss_name*) ;
 int gmn_link ;
 void* malloc (int) ;
 int memset (struct _gss_name*,int ,int) ;

struct _gss_name *
_gss_make_name(gssapi_mech_interface m, gss_name_t new_mn)
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

 HEIM_SLIST_INIT(&name->gn_mn);
 mn->gmn_mech = m;
 mn->gmn_mech_oid = &m->gm_mech_oid;
 mn->gmn_name = new_mn;
 HEIM_SLIST_INSERT_HEAD(&name->gn_mn, mn, gmn_link);

 return (name);
}
