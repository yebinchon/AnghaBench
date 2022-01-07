
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yn {int bit; scalar_t__ name; } ;


 int printf_unfiltered (char*,scalar_t__,char*) ;

__attribute__((used)) static void
dump_bits (struct yn *t, int info)
{
  while (t->name)
    {
      printf_unfiltered ("  %-45s : %s\n", t->name, (info & t->bit) ? "Yes" : "No");
      t++;
    }
}
