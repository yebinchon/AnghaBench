
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;


 char* _ (char*) ;
 int error (int,int ,char*) ;

__attribute__((used)) static uintmax_t
add_count (uintmax_t a, uintmax_t b)
{
  uintmax_t sum = a + b;
  if (sum < a)
    error (2, 0, _("input is too large to count"));
  return sum;
}
