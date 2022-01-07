
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsearch_data {struct __hsearch* __hsearch; } ;
struct __hsearch {int index_mask; scalar_t__ entries_used; int offset_basis; int * entries; } ;
typedef int ENTRY ;


 int arc4random_buf (int *,int) ;
 int * calloc (int,int) ;
 int free (struct __hsearch*) ;
 struct __hsearch* malloc (int) ;

int
hcreate_r(size_t nel, struct hsearch_data *htab)
{
 struct __hsearch *hsearch;







 hsearch = malloc(sizeof(*hsearch));
 if (hsearch == ((void*)0))
  return 0;
 hsearch->entries = calloc(16, sizeof(ENTRY));
 if (hsearch->entries == ((void*)0)) {
  free(hsearch);
  return 0;
 }





 arc4random_buf(&hsearch->offset_basis, sizeof(hsearch->offset_basis));
 hsearch->index_mask = 0xf;
 hsearch->entries_used = 0;
 htab->__hsearch = hsearch;
 return 1;
}
