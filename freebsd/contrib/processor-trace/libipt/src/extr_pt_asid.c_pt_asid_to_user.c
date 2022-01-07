
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_asid {size_t size; } ;


 int memcpy (struct pt_asid*,struct pt_asid const*,size_t) ;
 int pte_internal ;
 int pte_invalid ;

int pt_asid_to_user(struct pt_asid *user, const struct pt_asid *asid,
      size_t size)
{
 if (!user || !asid)
  return -pte_internal;


 if (size < sizeof(asid->size))
  return -pte_invalid;


 if (sizeof(*asid) < size)
  size = sizeof(*asid);


 memcpy(user, asid, size);


 user->size = size;

 return 0;
}
