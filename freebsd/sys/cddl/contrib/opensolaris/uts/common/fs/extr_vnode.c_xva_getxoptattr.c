
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_mask; } ;
struct TYPE_5__ {int xva_xoptattrs; TYPE_1__ xva_vattr; } ;
typedef TYPE_2__ xvattr_t ;
typedef int xoptattr_t ;


 int AT_XVATTR ;

xoptattr_t *
xva_getxoptattr(xvattr_t *xvap)
{
 xoptattr_t *xoap = ((void*)0);
 if (xvap->xva_vattr.va_mask & AT_XVATTR)
  xoap = &xvap->xva_xoptattrs;
 return (xoap);
}
