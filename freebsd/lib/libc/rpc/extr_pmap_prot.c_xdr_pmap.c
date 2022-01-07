
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap {int pm_port; int pm_prot; int pm_vers; int pm_prog; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 int assert (int ) ;
 scalar_t__ xdr_u_long (int *,int *) ;

bool_t
xdr_pmap(XDR *xdrs, struct pmap *regs)
{

 assert(xdrs != ((void*)0));
 assert(regs != ((void*)0));

 if (xdr_u_long(xdrs, &regs->pm_prog) &&
  xdr_u_long(xdrs, &regs->pm_vers) &&
  xdr_u_long(xdrs, &regs->pm_prot))
  return (xdr_u_long(xdrs, &regs->pm_port));
 return (FALSE);
}
