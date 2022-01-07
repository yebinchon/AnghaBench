
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_sec {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
lm_sec_cmp (const void *p1, const void *p2)
{
  const struct lm_sec *lms1 = p1, *lms2 = p2;
  return strcmp (lms1->name, lms2->name);
}
