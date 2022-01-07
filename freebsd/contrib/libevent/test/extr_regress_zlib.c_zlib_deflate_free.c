
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* z_streamp ;


 scalar_t__ Z_OK ;
 int assert (int) ;
 scalar_t__ deflateEnd (void*) ;
 int mm_free (void*) ;

__attribute__((used)) static void
zlib_deflate_free(void *ctx)
{
 z_streamp p = ctx;

 assert(deflateEnd(p) == Z_OK);
 mm_free(p);
}
