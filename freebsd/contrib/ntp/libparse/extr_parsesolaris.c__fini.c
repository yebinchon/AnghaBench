
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DDI_SUCCESS ;
 int EBUSY ;
 scalar_t__ mod_remove (int *) ;
 int modlinkage ;

int
_fini(
      void
      )
{
 if (mod_remove(&modlinkage) != DDI_SUCCESS)
 {
  return EBUSY;
 }
 else
     return DDI_SUCCESS;
}
