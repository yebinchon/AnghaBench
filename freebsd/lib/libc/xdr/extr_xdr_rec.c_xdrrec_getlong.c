
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ int32_t ;
typedef int bool_t ;
struct TYPE_5__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {int fbtbc; scalar_t__ in_finger; scalar_t__ in_boundry; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ntohl (int ) ;
 int xdrrec_getbytes (TYPE_1__*,char*,int) ;

__attribute__((used)) static bool_t
xdrrec_getlong(XDR *xdrs, long *lp)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);
 int32_t *buflp = (int32_t *)(void *)(rstrm->in_finger);
 int32_t mylong;


 if ((rstrm->fbtbc >= sizeof(int32_t)) &&
  (((long)rstrm->in_boundry - (long)buflp) >= sizeof(int32_t))) {
  *lp = (long)ntohl((u_int32_t)(*buflp));
  rstrm->fbtbc -= sizeof(int32_t);
  rstrm->in_finger += sizeof(int32_t);
 } else {
  if (! xdrrec_getbytes(xdrs, (char *)(void *)&mylong,
      sizeof(int32_t)))
   return (FALSE);
  *lp = (long)ntohl((u_int32_t)mylong);
 }
 return (TRUE);
}
