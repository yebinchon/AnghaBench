
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; int length; } ;
typedef TYPE_1__ heim_octet_string ;
typedef TYPE_2__* gssspnego_ctx ;
typedef int gss_buffer_t ;
struct TYPE_9__ {int value; int length; } ;
typedef TYPE_3__ gss_buffer_desc ;
struct TYPE_8__ {int negotiated_ctx_id; scalar_t__ verified_mic; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_DEFECTIVE_TOKEN ;
 scalar_t__ GSS_S_DUPLICATE_TOKEN ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,int ,TYPE_3__*,int *) ;

__attribute__((used)) static OM_uint32
verify_mechlist_mic
    (OM_uint32 *minor_status,
     gssspnego_ctx context_handle,
     gss_buffer_t mech_buf,
     heim_octet_string *mechListMIC
    )
{
    OM_uint32 ret;
    gss_buffer_desc mic_buf;

    if (context_handle->verified_mic) {

 *minor_status = 0;
 return GSS_S_DUPLICATE_TOKEN;
    }

    if (mechListMIC == ((void*)0)) {
 *minor_status = 0;
 return GSS_S_DEFECTIVE_TOKEN;
    }

    mic_buf.length = mechListMIC->length;
    mic_buf.value = mechListMIC->data;

    ret = gss_verify_mic(minor_status,
    context_handle->negotiated_ctx_id,
    mech_buf,
    &mic_buf,
    ((void*)0));

    if (ret != GSS_S_COMPLETE)
 ret = GSS_S_DEFECTIVE_TOKEN;

    return ret;
}
