
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bio_buffer_ptr ;
 int panic (char*) ;

void
bio_free(void *ptr, size_t size)
{

 if (ptr == ((void*)0))
  return;

 bio_buffer_ptr -= size;
 if (bio_buffer_ptr != ptr)
  panic("bio_alloc()/bio_free() mismatch\n");
}
