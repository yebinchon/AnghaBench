
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {size_t first_size; size_t total_large; } ;


 int REGIONAL_CHUNK_SIZE ;
 int count_chunks (struct regional*) ;

size_t
regional_get_mem(struct regional* r)
{
 return r->first_size + (count_chunks(r)-1)*REGIONAL_CHUNK_SIZE
  + r->total_large;
}
