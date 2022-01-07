
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refTables {int dummy; } ;


 int KM_NOSLEEP ;
 int LZ4_64KLIMIT ;
 int LZ4_compress64kCtx (void*,char const*,char*,int,int) ;
 int LZ4_compressCtx (void*,char const*,char*,int,int) ;
 int bzero (void*,int) ;
 int free (void*) ;
 void* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,void*) ;
 int lz4_ctx_cache ;
 void* malloc (int) ;

__attribute__((used)) static int
real_LZ4_compress(const char *source, char *dest, int isize, int osize)
{
 if (isize < (int)LZ4_64KLIMIT)
  return (LZ4_compress64kCtx(((void*)0), source, dest, isize, osize));
 return (LZ4_compressCtx(((void*)0), source, dest, isize, osize));

}
