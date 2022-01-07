
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_entry {int value; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_entries(const void *vp1, const void *vp2)
{
 const struct macro_entry *ep1, *ep2;

 ep1 = *(const struct macro_entry * const *)vp1;
 ep2 = *(const struct macro_entry * const *)vp2;
 return strcmp(ep1->value, ep2->value);
}
