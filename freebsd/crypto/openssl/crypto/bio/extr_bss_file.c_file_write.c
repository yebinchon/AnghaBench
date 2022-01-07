
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ ptr; scalar_t__ init; } ;
typedef int FILE ;
typedef TYPE_1__ BIO ;


 int BIO_FLAGS_UPLINK ;
 int UP_fwrite (char const*,int,int,scalar_t__) ;
 int fwrite (char const*,int,int,int *) ;

__attribute__((used)) static int file_write(BIO *b, const char *in, int inl)
{
    int ret = 0;

    if (b->init && (in != ((void*)0))) {
        if (b->flags & BIO_FLAGS_UPLINK)
            ret = UP_fwrite(in, (int)inl, 1, b->ptr);
        else
            ret = fwrite(in, (int)inl, 1, (FILE *)b->ptr);
        if (ret)
            ret = inl;






    }
    return ret;
}
