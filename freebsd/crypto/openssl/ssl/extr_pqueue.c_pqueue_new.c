
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqueue ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;
 int SSL_F_PQUEUE_NEW ;
 int SSLerr (int ,int ) ;

pqueue *pqueue_new(void)
{
    pqueue *pq = OPENSSL_zalloc(sizeof(*pq));

    if (pq == ((void*)0))
        SSLerr(SSL_F_PQUEUE_NEW, ERR_R_MALLOC_FAILURE);

    return pq;
}
