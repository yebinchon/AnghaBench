
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;


 int ALIGNMENT ;
 int REGIONAL_CHUNK_SIZE ;
 int REGIONAL_LARGE_OBJECT_SIZE ;
 scalar_t__ count_chunks (struct regional*) ;
 scalar_t__ count_large (struct regional*) ;
 int log_assert (int) ;
 int log_info (char*,unsigned int,unsigned int) ;

void
regional_log_stats(struct regional *r)
{

 log_assert(ALIGNMENT >= sizeof(char*));
 log_assert(REGIONAL_CHUNK_SIZE > ALIGNMENT);
 log_assert(REGIONAL_CHUNK_SIZE-ALIGNMENT > REGIONAL_LARGE_OBJECT_SIZE);
 log_assert(REGIONAL_CHUNK_SIZE >= sizeof(struct regional));

 log_info("regional %u chunks, %u large",
  (unsigned)count_chunks(r), (unsigned)count_large(r));
}
