
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int basic_test (int const*,char const*,int ,int,int *,int *) ;

__attribute__((used)) static void
noneopen(const atf_tc_t *tc, const char *mp)
{

 basic_test(tc, mp, 0, 0, ((void*)0), ((void*)0));
}
