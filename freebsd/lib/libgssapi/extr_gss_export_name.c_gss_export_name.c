
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _gss_name {int gn_mn; } ;
struct _gss_mechanism_name {int gmn_name; TYPE_1__* gmn_mech; } ;
typedef scalar_t__ gss_name_t ;
typedef int gss_buffer_t ;
struct TYPE_2__ {scalar_t__ (* gm_export_name ) (scalar_t__*,int ,int ) ;} ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NAME_NOT_MN ;
 struct _gss_mechanism_name* SLIST_FIRST (int *) ;
 int _gss_buffer_zero (int ) ;
 scalar_t__ stub1 (scalar_t__*,int ,int ) ;

OM_uint32
gss_export_name(OM_uint32 *minor_status,
    const gss_name_t input_name,
    gss_buffer_t exported_name)
{
 struct _gss_name *name = (struct _gss_name *) input_name;
 struct _gss_mechanism_name *mn;

 _gss_buffer_zero(exported_name);






 mn = SLIST_FIRST(&name->gn_mn);
 if (!mn) {
  *minor_status = 0;
  return (GSS_S_NAME_NOT_MN);
 }

 return mn->gmn_mech->gm_export_name(minor_status,
     mn->gmn_name, exported_name);
}
