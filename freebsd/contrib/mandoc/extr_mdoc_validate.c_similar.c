
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
similar(const char *s1, const char *s2)
{
 const int maxdist = 3;
 int dist = 0;

 while (s1[0] != '\0' && s2[0] != '\0') {
  if (s1[0] == s2[0]) {
   s1++;
   s2++;
   continue;
  }
  if (++dist > maxdist)
   return INT_MAX;
  if (s1[1] == s2[1]) {
   s1++;
   s2++;
  } else if (s1[0] == s2[1] && s1[1] == s2[0]) {
   s1 += 2;
   s2 += 2;
  } else if (s1[0] == s2[1])
   s2++;
  else if (s1[1] == s2[0])
   s1++;
  else
   return INT_MAX;
 }
 dist += strlen(s1) + strlen(s2);
 return dist > maxdist ? INT_MAX : dist;
}
