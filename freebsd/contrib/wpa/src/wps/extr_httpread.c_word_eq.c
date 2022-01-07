
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (int) ;
 int isgraph (int) ;
 scalar_t__ isupper (int) ;
 int tolower (int) ;

__attribute__((used)) static int word_eq(char *s1, char *s2)
{
 int c1;
 int c2;
 int end1 = 0;
 int end2 = 0;
 for (;;) {
  c1 = *s1++;
  c2 = *s2++;
  if (isalpha(c1) && isupper(c1))
   c1 = tolower(c1);
  if (isalpha(c2) && isupper(c2))
   c2 = tolower(c2);
  end1 = !isgraph(c1);
  end2 = !isgraph(c2);
  if (end1 || end2 || c1 != c2)
   break;
 }
 return end1 && end2;
}
