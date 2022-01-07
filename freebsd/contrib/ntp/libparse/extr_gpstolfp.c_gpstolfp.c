
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef unsigned long u_int ;
struct TYPE_3__ {scalar_t__ l_uf; scalar_t__ l_ui; } ;
typedef TYPE_1__ l_fp ;


 scalar_t__ GPSORIGIN ;
 unsigned long SECSPERDAY ;
 unsigned long SECSPERWEEK ;

void
gpstolfp(
  u_int weeks,
  u_int days,
  unsigned long seconds,
  l_fp * lfp
  )
{
  lfp->l_ui = (uint32_t)(weeks * SECSPERWEEK + days * SECSPERDAY + seconds + GPSORIGIN);
  lfp->l_uf = 0;
}
