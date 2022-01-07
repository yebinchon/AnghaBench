
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int charclass ;


 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int
equal (charclass s1, charclass s2)
{
  return memcmp (s1, s2, sizeof (charclass)) == 0;
}
