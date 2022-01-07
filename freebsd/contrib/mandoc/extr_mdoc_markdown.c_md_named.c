
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESC_EOL ;
 int ESC_FON ;
 int escflags ;
 int outcount ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
md_named(const char *s)
{
 printf("&%s;", s);
 escflags &= ~(ESC_FON | ESC_EOL);
 outcount++;
}
