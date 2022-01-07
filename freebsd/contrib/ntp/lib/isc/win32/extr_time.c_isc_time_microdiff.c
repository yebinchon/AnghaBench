
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_uint64_t ;
struct TYPE_6__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_7__ {TYPE_1__ absolute; } ;
typedef TYPE_2__ isc_time_t ;
struct TYPE_8__ {scalar_t__ QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
typedef int LONGLONG ;


 int REQUIRE (int) ;

isc_uint64_t
isc_time_microdiff(const isc_time_t *t1, const isc_time_t *t2) {
 ULARGE_INTEGER i1, i2;
 LONGLONG i3;

 REQUIRE(t1 != ((void*)0) && t2 != ((void*)0));

 i1.LowPart = t1->absolute.dwLowDateTime;
 i1.HighPart = t1->absolute.dwHighDateTime;
 i2.LowPart = t2->absolute.dwLowDateTime;
 i2.HighPart = t2->absolute.dwHighDateTime;

 if (i1.QuadPart <= i2.QuadPart)
  return (0);




 i3 = (i1.QuadPart - i2.QuadPart) / 10;

 return (i3);
}
