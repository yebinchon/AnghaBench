
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int pkg_atol256 (char const*,unsigned int) ;
 int pkg_atol8 (char const*,unsigned int) ;

__attribute__((used)) static off_t
pkg_atol(const char *p, unsigned char_cnt)
{




 if (*p & 0x80)
  return (pkg_atol256(p, char_cnt));
 return (pkg_atol8(p, char_cnt));
}
