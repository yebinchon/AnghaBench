
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_gss_cred {void* gc_svc; void* gc_proc; int gc_handle; int gc_seq; int gc_version; } ;
typedef void* enum_t ;
typedef int bool_t ;
typedef int XDR ;


 scalar_t__ xdr_enum (int *,void**) ;
 scalar_t__ xdr_gss_buffer_desc (int *,int *) ;
 scalar_t__ xdr_u_int (int *,int *) ;

bool_t
xdr_rpc_gss_cred(XDR *xdrs, struct rpc_gss_cred *p)
{
 enum_t proc, svc;
 bool_t ret;

 proc = p->gc_proc;
 svc = p->gc_svc;
 ret = (xdr_u_int(xdrs, &p->gc_version) &&
     xdr_enum(xdrs, &proc) &&
     xdr_u_int(xdrs, &p->gc_seq) &&
     xdr_enum(xdrs, &svc) &&
     xdr_gss_buffer_desc(xdrs, &p->gc_handle));
 p->gc_proc = proc;
 p->gc_svc = svc;

 return (ret);
}
