
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;



__attribute__((used)) static int bio_bucket_destroy(BIO *bio)
{

    if (bio == ((void*)0)) {
        return 0;
    }

    return 1;
}
