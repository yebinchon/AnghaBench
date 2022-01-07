
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int va_mask; } ;
struct TYPE_6__ {int * xva_rtnattrmap; int * xva_rtnattrmapp; TYPE_1__ xva_vattr; int xva_magic; int xva_mapsize; } ;
typedef TYPE_2__ xvattr_t ;


 int AT_XVATTR ;
 int XVA_MAGIC ;
 int XVA_MAPSIZE ;
 int bzero (TYPE_2__*,int) ;

void
xva_init(xvattr_t *xvap)
{
 bzero(xvap, sizeof (xvattr_t));
 xvap->xva_mapsize = XVA_MAPSIZE;
 xvap->xva_magic = XVA_MAGIC;
 xvap->xva_vattr.va_mask = AT_XVATTR;
 xvap->xva_rtnattrmapp = &(xvap->xva_rtnattrmap)[0];
}
