
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {int jp_flags; int jp_value; int jp_name; } ;


 int JP_RAWVALUE ;
 int free (int ) ;

void
jailparam_free(struct jailparam *jp, unsigned njp)
{
 unsigned j;

 for (j = 0; j < njp; j++) {
  free(jp[j].jp_name);
  if (!(jp[j].jp_flags & JP_RAWVALUE))
   free(jp[j].jp_value);
 }
}
