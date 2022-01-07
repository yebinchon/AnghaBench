
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 int FAIL (char*,scalar_t__,...) ;
 int errno ;
 int ex ;
 int extent_alloc_subregion1 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,int ,scalar_t__*) ;
 int ret ;
 int strerror (int ) ;

__attribute__((used)) static void
h_alloc_subregion(u_long substart, u_long subend, u_long size,
    u_long alignment, u_long boundary, int expret, u_long expres)
{
 u_long result;






 ret = extent_alloc_subregion1(ex, substart, subend, size,
     alignment, 0, boundary, 0, &result);

 if (ret != expret)
  atf_tc_fail("extent_alloc_subregion1(ex, %#lx, %#lx, %#lx, %#lx, 0, " "%#lx, 0, &result): " "%s", substart, subend, size, alignment, boundary, strerror(errno));

 if (expret == 0 && result != expres)
  atf_tc_fail("extent_alloc_subregion1(ex, %#lx, %#lx, %#lx, %#lx, 0, " "%#lx, 0, &result): " "result should be: %#lx, got: %#lx", substart, subend, size, alignment, boundary, expres, result);

}
