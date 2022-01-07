
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_blksize; } ;


 size_t BUFSIZ ;
 int free (void*) ;
 void* malloc (size_t) ;
 size_t max (size_t,int ) ;
 int warn (char*) ;

void *
alloc_buffer (void *oldbuf, size_t *sz, struct stat *st)
{
    size_t new_sz;

    new_sz = BUFSIZ;




    if(new_sz > *sz) {
 if (oldbuf)
     free (oldbuf);
 oldbuf = malloc (new_sz);
 if (oldbuf == ((void*)0)) {
     warn ("malloc");
     *sz = 0;
     return ((void*)0);
 }
 *sz = new_sz;
    }
    return oldbuf;
}
