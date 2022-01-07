
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gssapi_data {int context_hdl; } ;
struct TYPE_4__ {int length; void* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int GSS_C_QOP_DEFAULT ;
 int gss_wrap (int *,int ,int,int ,TYPE_1__*,int*,TYPE_1__*) ;
 int prot_private ;

__attribute__((used)) static int
gss_encode(void *app_data, void *from, int length, int level, void **to)
{
    OM_uint32 maj_stat, min_stat;
    gss_buffer_desc input, output;
    int conf_state;
    struct gssapi_data *d = app_data;

    input.length = length;
    input.value = from;
    maj_stat = gss_wrap (&min_stat,
    d->context_hdl,
    level == prot_private,
    GSS_C_QOP_DEFAULT,
    &input,
    &conf_state,
    &output);
    *to = output.value;
    return output.length;
}
