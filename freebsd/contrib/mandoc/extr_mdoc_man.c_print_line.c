
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMAN_nl ;
 int outflags ;
 int print_word (char const*) ;

__attribute__((used)) static void
print_line(const char *s, int newflags)
{

 outflags |= MMAN_nl;
 print_word(s);
 outflags |= newflags;
}
