
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ length; int * value; } ;
struct mg_thread_ctx {TYPE_2__ min_error; TYPE_2__ maj_error; void* min_stat; void* maj_stat; int * mech; } ;
typedef TYPE_1__* gssapi_mech_interface ;
struct TYPE_6__ {int gm_mech_oid; void* (* gm_display_status ) (void**,void*,int ,int *,void**,TYPE_2__*) ;} ;
typedef void* OM_uint32 ;


 int GSS_C_GSS_CODE ;
 int GSS_C_MECH_CODE ;
 scalar_t__ GSS_ERROR (void*) ;
 struct mg_thread_ctx* _gss_mechglue_thread () ;
 int gss_release_buffer (void**,TYPE_2__*) ;
 void* stub1 (void**,void*,int ,int *,void**,TYPE_2__*) ;
 void* stub2 (void**,void*,int ,int *,void**,TYPE_2__*) ;

void
_gss_mg_error(gssapi_mech_interface m, OM_uint32 maj, OM_uint32 min)
{
    OM_uint32 major_status, minor_status;
    OM_uint32 message_content;
    struct mg_thread_ctx *mg;





    if (m->gm_display_status == ((void*)0))
 return ;

    mg = _gss_mechglue_thread();
    if (mg == ((void*)0))
 return;

    gss_release_buffer(&minor_status, &mg->maj_error);
    gss_release_buffer(&minor_status, &mg->min_error);

    mg->mech = &m->gm_mech_oid;
    mg->maj_stat = maj;
    mg->min_stat = min;

    major_status = m->gm_display_status(&minor_status,
     maj,
     GSS_C_GSS_CODE,
     &m->gm_mech_oid,
     &message_content,
     &mg->maj_error);
    if (GSS_ERROR(major_status)) {
 mg->maj_error.value = ((void*)0);
 mg->maj_error.length = 0;
    }
    major_status = m->gm_display_status(&minor_status,
     min,
     GSS_C_MECH_CODE,
     &m->gm_mech_oid,
     &message_content,
     &mg->min_error);
    if (GSS_ERROR(major_status)) {
 mg->min_error.value = ((void*)0);
 mg->min_error.length = 0;
    }
}
