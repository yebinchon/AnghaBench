
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int gss_ctx_id_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_8__ {int length; char* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_ERROR (int ) ;
 int gss_err (int,int ,char*) ;
 int gss_get_mic (int *,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int gss_wrap (int *,int ,int,int ,TYPE_1__*,int *,TYPE_1__*) ;
 char* strdup (char*) ;
 int write_token (int,TYPE_1__*) ;

__attribute__((used)) static int
do_trans (int sock, gss_ctx_id_t context_hdl)
{
    OM_uint32 maj_stat, min_stat;
    gss_buffer_desc real_input_token, real_output_token;
    gss_buffer_t input_token = &real_input_token,
 output_token = &real_output_token;



    input_token->length = 3;
    input_token->value = strdup("hej");

    maj_stat = gss_get_mic(&min_stat,
      context_hdl,
      GSS_C_QOP_DEFAULT,
      input_token,
      output_token);
    if (GSS_ERROR(maj_stat))
 gss_err (1, min_stat, "gss_get_mic");

    write_token (sock, input_token);
    write_token (sock, output_token);



    input_token->length = 7;
    input_token->value = "hemligt";

    maj_stat = gss_wrap (&min_stat,
    context_hdl,
    0,
    GSS_C_QOP_DEFAULT,
    input_token,
    ((void*)0),
    output_token);
    if (GSS_ERROR(maj_stat))
 gss_err (1, min_stat, "gss_wrap");

    write_token (sock, output_token);

    maj_stat = gss_wrap (&min_stat,
    context_hdl,
    1,
    GSS_C_QOP_DEFAULT,
    input_token,
    ((void*)0),
    output_token);
    if (GSS_ERROR(maj_stat))
 gss_err (1, min_stat, "gss_wrap");

    write_token (sock, output_token);

    return 0;
}
