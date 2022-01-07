
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct calendar {int dummy; } ;
struct TYPE_3__ {int lo; } ;
struct TYPE_4__ {TYPE_1__ d_s; } ;


 TYPE_2__ ntpcal_date_to_ntp64 (struct calendar const*) ;

uint32_t
ntpcal_date_to_ntp(
 const struct calendar *jd
 )
{



 return ntpcal_date_to_ntp64(jd).d_s.lo;
}
