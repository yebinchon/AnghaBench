
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; size_t data_len; } ;
typedef TYPE_1__ pem_object ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (char*,int) ;
 int PEM_read_bio (int *,char**,char**,unsigned char**,long*) ;
 TYPE_1__* decode_pem (char*,size_t,size_t*) ;
 int memmove (char*,char*,size_t) ;
 char* strstr (char*,char*) ;

unsigned char *
dearmor(char *pem, size_t nbytes, size_t *len)
{




 BIO *bp;
 char *name = ((void*)0);
 char *header = ((void*)0);

 unsigned char *data = ((void*)0);
 char *cp;
 char *ep;


 if ((cp = strstr((char *)pem, "\n=")) &&
     (ep = strstr(cp, "\n---"))) {
  memmove(cp, ep, nbytes - (size_t)(ep - pem));
  nbytes -= (size_t)(ep - cp);
  pem[nbytes] = '\0';
 }
 if ((bp = BIO_new_mem_buf(pem, (int)nbytes))) {
  long llen = (long)nbytes;

  if (!PEM_read_bio(bp, &name, &header, &data, &llen))
   data = ((void*)0);
  BIO_free(bp);
  *len = (size_t)llen;
 }

 return (data);
}
