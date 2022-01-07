
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next_bio; TYPE_1__* method; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ BIO ;



BIO *BIO_find_type(BIO *bio, int type)
{
    int mt, mask;

    if (bio == ((void*)0))
        return ((void*)0);
    mask = type & 0xff;
    do {
        if (bio->method != ((void*)0)) {
            mt = bio->method->type;

            if (!mask) {
                if (mt & type)
                    return bio;
            } else if (mt == type)
                return bio;
        }
        bio = bio->next_bio;
    } while (bio != ((void*)0));
    return ((void*)0);
}
