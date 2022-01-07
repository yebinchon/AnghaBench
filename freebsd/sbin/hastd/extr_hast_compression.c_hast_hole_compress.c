
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int size ;


 int allzeros (unsigned char const*,size_t) ;
 int bcopy (int *,void*,int) ;
 int htole32 (int ) ;
 void* malloc (int) ;
 int pjdlog_warning (char*,size_t) ;

__attribute__((used)) static void *
hast_hole_compress(const unsigned char *data, size_t *sizep)
{
 uint32_t size;
 void *newbuf;

 if (!allzeros(data, *sizep))
  return (((void*)0));

 newbuf = malloc(sizeof(size));
 if (newbuf == ((void*)0)) {
  pjdlog_warning("Unable to compress (no memory: %zu).",
      (size_t)*sizep);
  return (((void*)0));
 }
 size = htole32((uint32_t)*sizep);
 bcopy(&size, newbuf, sizeof(size));
 *sizep = sizeof(size);

 return (newbuf);
}
