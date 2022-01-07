
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsearch_data {struct __hsearch* __hsearch; } ;
struct __hsearch {struct __hsearch* entries; } ;


 int free (struct __hsearch*) ;

void
hdestroy_r(struct hsearch_data *htab)
{
 struct __hsearch *hsearch;


 hsearch = htab->__hsearch;
 free(hsearch->entries);
 free(hsearch);
}
