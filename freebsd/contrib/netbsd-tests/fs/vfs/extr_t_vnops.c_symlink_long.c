
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int symlink_len (int const*,char const*,size_t) ;

__attribute__((used)) static void
symlink_long(const atf_tc_t *tc, const char *mp)
{




 size_t len;
 int fuzz;
 for (len = 2; len <= 65536; len *= 2) {
  for (fuzz = -1; fuzz <= 1; fuzz++) {
   symlink_len(tc, mp, len + fuzz);
  }
 }
}
