
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct _gss_mechanism_name {TYPE_1__* gmn_mech; int gmn_mech_oid; int gmn_name; } ;
struct TYPE_2__ {int (* gm_pname_to_uid ) (int *,int ,int ,int *) ;} ;
typedef int OM_uint32 ;


 scalar_t__ GSS_ERROR (int ) ;
 int GSS_S_UNAVAILABLE ;
 int _gss_mg_error (TYPE_1__*,int ,int ) ;
 int stub1 (int *,int ,int ,int *) ;

__attribute__((used)) static OM_uint32
mech_pname_to_uid(OM_uint32 *minor_status,
                  struct _gss_mechanism_name *mn,
                  uid_t *uidp)
{
    OM_uint32 major_status = GSS_S_UNAVAILABLE;

    *minor_status = 0;

    if (mn->gmn_mech->gm_pname_to_uid == ((void*)0))
        return GSS_S_UNAVAILABLE;

    major_status = mn->gmn_mech->gm_pname_to_uid(minor_status,
                                                 mn->gmn_name,
                                                 mn->gmn_mech_oid,
                                                 uidp);
    if (GSS_ERROR(major_status))
        _gss_mg_error(mn->gmn_mech, major_status, *minor_status);

    return major_status;
}
