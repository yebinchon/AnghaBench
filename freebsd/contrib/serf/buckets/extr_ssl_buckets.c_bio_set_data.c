
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ptr; } ;
typedef TYPE_1__ BIO ;


 int BIO_set_data (TYPE_1__*,void*) ;

__attribute__((used)) static void bio_set_data(BIO *bio, void *data)
{



    bio->ptr = data;

}
