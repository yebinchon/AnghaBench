
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 p2ps_own_preferred_cpt(const u8 *cpt_priority, u8 req_cpt_mask)
{
 int i;

 for (i = 0; cpt_priority[i]; i++)
  if (req_cpt_mask & cpt_priority[i])
   return cpt_priority[i];

 return 0;
}
