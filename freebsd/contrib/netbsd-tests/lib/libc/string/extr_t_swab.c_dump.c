
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
dump(const char *f, char *b, size_t l)
{

 printf("%s ", f);
 while (l--)
  printf("%.2x ", (unsigned char)*b++);
 printf("\n");
}
