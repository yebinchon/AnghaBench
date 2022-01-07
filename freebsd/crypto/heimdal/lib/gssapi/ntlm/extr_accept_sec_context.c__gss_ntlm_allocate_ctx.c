
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ntlm_server_interface {scalar_t__ (* nsi_init ) (scalar_t__*,int *) ;} ;
typedef TYPE_1__* ntlm_ctx ;
struct TYPE_4__ {int ictx; struct ntlm_server_interface* server; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 TYPE_1__* calloc (int,int) ;
 struct ntlm_server_interface ntlmsspi_kdc_digest ;
 scalar_t__ stub1 (scalar_t__*,int *) ;

OM_uint32
_gss_ntlm_allocate_ctx(OM_uint32 *minor_status, ntlm_ctx *ctx)
{
    OM_uint32 maj_stat;
    struct ntlm_server_interface *ns_interface = ((void*)0);




    if (ns_interface == ((void*)0))
 return GSS_S_FAILURE;

    *ctx = calloc(1, sizeof(**ctx));

    (*ctx)->server = ns_interface;

    maj_stat = (*(*ctx)->server->nsi_init)(minor_status, &(*ctx)->ictx);
    if (maj_stat != GSS_S_COMPLETE)
 return maj_stat;

    return GSS_S_COMPLETE;
}
