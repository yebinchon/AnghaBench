
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BUFSIZ ;
 int abort () ;
 int memmove (int *,void const*,size_t) ;
 int netflush () ;
 int * netobuf ;
 int * nfrontp ;

void
writenet(const void *ptr, size_t len)
{

    while ((&netobuf[BUFSIZ] - nfrontp) < len) {

 netflush();
    }
    if ((&netobuf[BUFSIZ] - nfrontp) < len)
 abort();

    memmove(nfrontp, ptr, len);
    nfrontp += len;
}
