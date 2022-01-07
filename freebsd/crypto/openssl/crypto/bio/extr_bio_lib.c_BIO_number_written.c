
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int num_write; } ;
typedef TYPE_1__ BIO ;



uint64_t BIO_number_written(BIO *bio)
{
    if (bio)
        return bio->num_write;
    return 0;
}
