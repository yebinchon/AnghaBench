
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int extendbody (int const*,int ) ;

__attribute__((used)) static void
extendfile(const atf_tc_t *tc, const char *mp)
{

 extendbody(tc, 0);
}
