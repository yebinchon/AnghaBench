
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {int dummy; } ;
struct _citrus_memory_stream {int dummy; } ;


 int _citrus_memory_stream_bind (struct _citrus_memory_stream*,struct _citrus_region*) ;
 int _citrus_region_init (struct _citrus_region*,void*,size_t) ;

__attribute__((used)) static __inline void
_citrus_memory_stream_bind_ptr(struct _citrus_memory_stream * __restrict ms,
    void *ptr, size_t sz)
{
 struct _citrus_region r;

 _citrus_region_init(&r, ptr, sz);
 _citrus_memory_stream_bind(ms, &r);
}
