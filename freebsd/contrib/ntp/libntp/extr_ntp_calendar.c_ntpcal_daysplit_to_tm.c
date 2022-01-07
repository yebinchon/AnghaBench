
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_3__ {scalar_t__ hi; int lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef scalar_t__ int32_t ;


 scalar_t__ ntpcal_daysec_to_tm (struct tm*,int ) ;
 int ntpcal_rd_to_tm (struct tm*,scalar_t__) ;

int
ntpcal_daysplit_to_tm(
 struct tm *utm,
 const ntpcal_split *ds ,
 int32_t dof
 )
{
 dof += ntpcal_daysec_to_tm(utm, ds->lo);

 return ntpcal_rd_to_tm(utm, ds->hi + dof);
}
