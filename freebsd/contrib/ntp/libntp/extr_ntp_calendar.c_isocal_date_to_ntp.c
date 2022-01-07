
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct isodate {int dummy; } ;
struct TYPE_3__ {int lo; } ;
struct TYPE_4__ {TYPE_1__ d_s; } ;


 TYPE_2__ isocal_date_to_ntp64 (struct isodate const*) ;

uint32_t
isocal_date_to_ntp(
 const struct isodate *id
 )
{



 return isocal_date_to_ntp64(id).d_s.lo;
}
