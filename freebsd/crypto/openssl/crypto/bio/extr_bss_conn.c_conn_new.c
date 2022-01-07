
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; char* ptr; scalar_t__ flags; scalar_t__ init; } ;
typedef TYPE_1__ BIO ;


 scalar_t__ BIO_CONNECT_new () ;
 scalar_t__ INVALID_SOCKET ;

__attribute__((used)) static int conn_new(BIO *bi)
{
    bi->init = 0;
    bi->num = (int)INVALID_SOCKET;
    bi->flags = 0;
    if ((bi->ptr = (char *)BIO_CONNECT_new()) == ((void*)0))
        return 0;
    else
        return 1;
}
