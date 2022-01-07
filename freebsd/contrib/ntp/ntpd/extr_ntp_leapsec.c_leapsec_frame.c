
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int stime; int ttime; int dynls; int ebase; scalar_t__ this_tai; scalar_t__ next_tai; } ;
struct TYPE_8__ {TYPE_1__ head; } ;
typedef TYPE_2__ leap_table_t ;
struct TYPE_9__ {int dynamic; int ttime; int ebase; scalar_t__ tai_diff; scalar_t__ tai_offs; } ;
typedef TYPE_3__ leap_result_t ;


 int FALSE ;
 TYPE_2__* leapsec_get_table (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ ucmpv64 (int *,int *) ;

int
leapsec_frame(
        leap_result_t *qr)
{
 const leap_table_t * pt;

        memset(qr, 0, sizeof(leap_result_t));
 pt = leapsec_get_table(FALSE);

 qr->tai_offs = pt->head.this_tai;
 qr->tai_diff = pt->head.next_tai - pt->head.this_tai;
 qr->ebase = pt->head.ebase;
 qr->ttime = pt->head.ttime;
 qr->dynamic = pt->head.dynls;

 return ucmpv64(&pt->head.ttime, &pt->head.stime) >= 0;
}
