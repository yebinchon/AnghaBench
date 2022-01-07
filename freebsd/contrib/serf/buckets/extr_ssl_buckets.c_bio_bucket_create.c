
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int shutdown; int init; int num; int * ptr; } ;
typedef TYPE_1__ BIO ;


 int BIO_set_data (TYPE_1__*,int *) ;
 int BIO_set_init (TYPE_1__*,int) ;
 int BIO_set_shutdown (TYPE_1__*,int) ;

__attribute__((used)) static int bio_bucket_create(BIO *bio)
{





    bio->shutdown = 1;
    bio->init = 1;
    bio->num = -1;
    bio->ptr = ((void*)0);


    return 1;
}
