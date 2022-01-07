
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {struct iovec* iov_base; } ;


 int free (struct iovec*) ;

void
free_iovec(struct iovec **iov, int *iovlen)
{
 int i;

 for (i = 0; i < *iovlen; i++)
  free((*iov)[i].iov_base);
 free(*iov);
}
