
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumpdates {int dd_ddate; int dd_name; } ;


 int strncmp (int ,int ,int) ;

int
datesort(const void *a1, const void *a2)
{
 struct dumpdates *d1 = *(struct dumpdates **)a1;
 struct dumpdates *d2 = *(struct dumpdates **)a2;
 int diff;

 diff = strncmp(d1->dd_name, d2->dd_name, sizeof(d1->dd_name));
 if (diff == 0)
  return (d2->dd_ddate - d1->dd_ddate);
 return (diff);
}
