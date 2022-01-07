
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_count (int ,size_t) ;
 int eolbyte ;
 char const* lastnl ;
 char* memchr (char const*,int ,int) ;
 int totalnl ;

__attribute__((used)) static void
nlscan (char const *lim)
{
  size_t newlines = 0;
  char const *beg;
  for (beg = lastnl; beg != lim; beg = memchr (beg, eolbyte, lim - beg), beg++)
    newlines++;
  totalnl = add_count (totalnl, newlines);
  lastnl = lim;
}
