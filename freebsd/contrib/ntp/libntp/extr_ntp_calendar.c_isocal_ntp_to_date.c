
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
struct isodate {int dummy; } ;


 int isocal_ntp64_to_date (struct isodate*,int *) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;

int
isocal_ntp_to_date(
 struct isodate *id,
 uint32_t ntp,
 const time_t *piv
 )
{
 vint64 ntp64;





 ntp64 = ntpcal_ntp_to_ntp(ntp, piv);
 return isocal_ntp64_to_date(id, &ntp64);
}
