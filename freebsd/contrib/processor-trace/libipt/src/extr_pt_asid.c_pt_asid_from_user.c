
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_asid {size_t size; } ;


 int memcpy (struct pt_asid*,struct pt_asid const*,size_t) ;
 int pt_asid_init (struct pt_asid*) ;
 int pte_internal ;

int pt_asid_from_user(struct pt_asid *asid, const struct pt_asid *user)
{
 if (!asid)
  return -pte_internal;

 pt_asid_init(asid);

 if (user) {
  size_t size;

  size = user->size;


  if (sizeof(*asid) < size)
   size = sizeof(*asid);


  memcpy(asid, user, size);


  asid->size = sizeof(*asid);
 }

 return 0;
}
