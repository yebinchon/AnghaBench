
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_gets (int *,char*,int) ;

__attribute__((used)) static int nbiof_gets(BIO *bp, char *buf, int size)
{
    if (bp->next_bio == ((void*)0))
        return 0;
    return BIO_gets(bp->next_bio, buf, size);
}
