
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct rmtcallargs {scalar_t__ arglen; int args_ptr; int (* xdr_args ) (int *,int ) ;scalar_t__ proc; scalar_t__ vers; scalar_t__ prog; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ XDR_GETPOS (int *) ;
 int XDR_SETPOS (int *,scalar_t__) ;
 int assert (int ) ;
 int stub1 (int *,int ) ;
 scalar_t__ xdr_u_long (int *,scalar_t__*) ;

bool_t
xdr_rmtcall_args(XDR *xdrs, struct rmtcallargs *cap)
{
 u_int lenposition, argposition, position;

 assert(xdrs != ((void*)0));
 assert(cap != ((void*)0));

 if (xdr_u_long(xdrs, &(cap->prog)) &&
     xdr_u_long(xdrs, &(cap->vers)) &&
     xdr_u_long(xdrs, &(cap->proc))) {
  lenposition = XDR_GETPOS(xdrs);
  if (! xdr_u_long(xdrs, &(cap->arglen)))
      return (FALSE);
  argposition = XDR_GETPOS(xdrs);
  if (! (*(cap->xdr_args))(xdrs, cap->args_ptr))
      return (FALSE);
  position = XDR_GETPOS(xdrs);
  cap->arglen = (u_long)position - (u_long)argposition;
  XDR_SETPOS(xdrs, lenposition);
  if (! xdr_u_long(xdrs, &(cap->arglen)))
      return (FALSE);
  XDR_SETPOS(xdrs, position);
  return (TRUE);
 }
 return (FALSE);
}
