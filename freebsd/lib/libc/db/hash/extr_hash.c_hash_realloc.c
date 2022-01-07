
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SEGMENT ;


 int free (int *) ;
 void* malloc (int) ;
 int memmove (void*,int *,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void *
hash_realloc(SEGMENT **p_ptr, int oldsize, int newsize)
{
 void *p;

 if ( (p = malloc(newsize)) ) {
  memmove(p, *p_ptr, oldsize);
  memset((char *)p + oldsize, 0, newsize - oldsize);
  free(*p_ptr);
  *p_ptr = p;
 }
 return (p);
}
