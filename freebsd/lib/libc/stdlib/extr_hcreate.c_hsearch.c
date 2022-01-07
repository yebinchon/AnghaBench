
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENTRY ;
typedef int ACTION ;


 int global_hashtable ;
 int global_hashtable_initialized ;
 scalar_t__ hcreate_r (int ,int *) ;
 scalar_t__ hsearch_r (int ,int ,int **,int *) ;

ENTRY *
hsearch(ENTRY item, ACTION action)
{
 ENTRY *retval;


 if (!global_hashtable_initialized) {
  if (hcreate_r(0, &global_hashtable) == 0)
   return (((void*)0));
  global_hashtable_initialized = 1;
 }
 if (hsearch_r(item, action, &retval, &global_hashtable) == 0)
  return (((void*)0));
 return (retval);
}
