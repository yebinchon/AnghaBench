
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gm_mech_oid; int (* gm_inquire_names_for_mech ) (int *,int *,int **) ;} ;
struct _gss_mech_switch {int * gm_name_types; TYPE_1__ gm_mech; int gm_mech_oid; int * gm_so; } ;
typedef TYPE_1__* gssapi_mech_interface ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int HEIM_SLIST_INSERT_HEAD (int *,struct _gss_mech_switch*,int ) ;
 int _gss_mech_oids ;
 int _gss_mechs ;
 struct _gss_mech_switch* calloc (int,int) ;
 int gm_link ;
 int gss_add_oid_set_member (int *,int *,int *) ;
 int gss_create_empty_oid_set (int *,int **) ;
 int stub1 (int *,int *,int **) ;

__attribute__((used)) static int
add_builtin(gssapi_mech_interface mech)
{
    struct _gss_mech_switch *m;
    OM_uint32 minor_status;


    if (mech == ((void*)0))
 return 0;

    m = calloc(1, sizeof(*m));
    if (m == ((void*)0))
 return ENOMEM;
    m->gm_so = ((void*)0);
    m->gm_mech = *mech;
    m->gm_mech_oid = mech->gm_mech_oid;
    gss_add_oid_set_member(&minor_status,
      &m->gm_mech.gm_mech_oid, &_gss_mech_oids);



    if (m->gm_mech.gm_inquire_names_for_mech)
 (*m->gm_mech.gm_inquire_names_for_mech)(&minor_status,
     &m->gm_mech.gm_mech_oid, &m->gm_name_types);

    if (m->gm_name_types == ((void*)0))
 gss_create_empty_oid_set(&minor_status, &m->gm_name_types);

    HEIM_SLIST_INSERT_HEAD(&_gss_mechs, m, gm_link);
    return 0;
}
