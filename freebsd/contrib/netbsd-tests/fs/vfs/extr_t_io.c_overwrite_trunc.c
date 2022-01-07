
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int overwritebody (int const*,int,int) ;

__attribute__((used)) static void
overwrite_trunc(const atf_tc_t *tc, const char *mp)
{

 overwritebody(tc, 1<<16, 1);
}
