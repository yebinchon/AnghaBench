
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket {struct bucket* name; } ;


 size_t cache_size ;
 int free (struct bucket*) ;

__attribute__((used)) static void
cleanup(void *private)
{
 size_t i;
 struct bucket *cache = (struct bucket *)private;

 for (i = 0; i < cache_size; i++)
  free(cache[i].name);
 free(cache);
}
