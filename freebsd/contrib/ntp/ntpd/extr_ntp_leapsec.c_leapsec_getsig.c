
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lsig; } ;
typedef TYPE_1__ leap_table_t ;
typedef int leap_signature_t ;


 int FALSE ;
 TYPE_1__* leapsec_get_table (int ) ;
 int memcpy (int *,int *,int) ;

void
leapsec_getsig(
 leap_signature_t * psig)
{
 const leap_table_t * pt;

 pt = leapsec_get_table(FALSE);
 memcpy(psig, &pt->lsig, sizeof(leap_signature_t));
}
