
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bio_dgram_sctp_data ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ BIO ;


 int OPENSSL_free (int *) ;
 int dgram_clear (TYPE_1__*) ;

__attribute__((used)) static int dgram_sctp_free(BIO *a)
{
    bio_dgram_sctp_data *data;

    if (a == ((void*)0))
        return 0;
    if (!dgram_clear(a))
        return 0;

    data = (bio_dgram_sctp_data *) a->ptr;
    if (data != ((void*)0))
        OPENSSL_free(data);

    return 1;
}
