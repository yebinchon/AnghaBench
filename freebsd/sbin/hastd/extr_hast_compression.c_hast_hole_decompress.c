
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int size ;


 int bcopy (unsigned char const*,size_t*,int) ;
 int bzero (void*,size_t) ;
 size_t le32toh (size_t) ;
 void* malloc (size_t) ;
 int pjdlog_error (char*,size_t) ;

__attribute__((used)) static void *
hast_hole_decompress(const unsigned char *data, size_t *sizep)
{
 uint32_t size;
 void *newbuf;

 if (*sizep != sizeof(size)) {
  pjdlog_error("Unable to decompress (invalid size: %zu).",
      *sizep);
  return (((void*)0));
 }

 bcopy(data, &size, sizeof(size));
 size = le32toh(size);

 newbuf = malloc(size);
 if (newbuf == ((void*)0)) {
  pjdlog_error("Unable to decompress (no memory: %zu).",
      (size_t)size);
  return (((void*)0));
 }
 bzero(newbuf, size);
 *sizep = size;

 return (newbuf);
}
