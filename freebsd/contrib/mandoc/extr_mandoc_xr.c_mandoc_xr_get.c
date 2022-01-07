
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mandoc_xr {int dummy; } ;


 struct mandoc_xr* xr_first ;

struct mandoc_xr *
mandoc_xr_get(void)
{
 return xr_first;
}
