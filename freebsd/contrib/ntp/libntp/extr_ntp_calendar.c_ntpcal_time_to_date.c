
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vint64 ;
struct calendar {int dummy; } ;
struct TYPE_3__ {int hi; int lo; } ;
typedef TYPE_1__ ntpcal_split ;


 scalar_t__ DAY_UNIX_STARTS ;
 scalar_t__ ntpcal_daysec_to_date (struct calendar*,int ) ;
 TYPE_1__ ntpcal_daysplit (int const*) ;
 int ntpcal_rd_to_date (struct calendar*,int ) ;

int
ntpcal_time_to_date(
 struct calendar *jd,
 const vint64 *ts
 )
{
 ntpcal_split ds;

 ds = ntpcal_daysplit(ts);
 ds.hi += ntpcal_daysec_to_date(jd, ds.lo);
 ds.hi += DAY_UNIX_STARTS;

 return ntpcal_rd_to_date(jd, ds.hi);
}
