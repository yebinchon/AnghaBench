
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int tar_atol_base_n (char const*,size_t,int) ;

__attribute__((used)) static int64_t
tar_atol10(const char *p, size_t char_cnt)
{
 return tar_atol_base_n(p, char_cnt, 10);
}
