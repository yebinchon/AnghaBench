
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 size_t term_strlen (struct termp*,char const*) ;
 int term_word (struct termp*,char const*) ;

__attribute__((used)) static void
tbl_fill_string(struct termp *tp, const char *cp, size_t len)
{
 size_t i, sz;

 sz = term_strlen(tp, cp);
 for (i = 0; i < len; i += sz)
  term_word(tp, cp);
}
