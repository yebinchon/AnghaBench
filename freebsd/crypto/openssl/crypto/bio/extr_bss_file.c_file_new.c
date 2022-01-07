
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * ptr; scalar_t__ num; scalar_t__ init; } ;
typedef TYPE_1__ BIO ;


 int BIO_FLAGS_UPLINK ;

__attribute__((used)) static int file_new(BIO *bi)
{
    bi->init = 0;
    bi->num = 0;
    bi->ptr = ((void*)0);
    bi->flags = BIO_FLAGS_UPLINK;
    return 1;
}
