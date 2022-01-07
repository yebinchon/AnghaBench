
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ outcount ;
 int printf (char*,char const) ;
 int putchar (char const) ;
 int * strchr (char*,char const) ;

__attribute__((used)) static void
md_uri(const char *s)
{
 while (*s != '\0') {
  if (strchr("%()<>", *s) != ((void*)0)) {
   printf("%%%2.2hhX", *s);
   outcount += 3;
  } else {
   putchar(*s);
   outcount++;
  }
  s++;
 }
}
