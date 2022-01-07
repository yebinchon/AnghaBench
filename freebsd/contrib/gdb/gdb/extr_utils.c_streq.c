
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

int
streq (const char *lhs, const char *rhs)
{
  return !strcmp (lhs, rhs);
}
