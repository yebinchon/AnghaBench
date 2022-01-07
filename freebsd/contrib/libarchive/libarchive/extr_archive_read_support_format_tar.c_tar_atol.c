
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int tar_atol256 (char const*,size_t) ;
 int tar_atol8 (char const*,size_t) ;

__attribute__((used)) static int64_t
tar_atol(const char *p, size_t char_cnt)
{




 if (*p & 0x80)
  return (tar_atol256(p, char_cnt));
 return (tar_atol8(p, char_cnt));
}
