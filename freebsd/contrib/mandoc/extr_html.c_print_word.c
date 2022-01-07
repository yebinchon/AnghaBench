
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int dummy; } ;


 int print_byte (struct html*,int ) ;

__attribute__((used)) static void
print_word(struct html *h, const char *cp)
{
 while (*cp != '\0')
  print_byte(h, *cp++);
}
