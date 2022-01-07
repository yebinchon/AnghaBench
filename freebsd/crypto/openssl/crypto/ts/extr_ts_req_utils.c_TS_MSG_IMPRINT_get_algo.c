
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_3__ {int * hash_algo; } ;
typedef TYPE_1__ TS_MSG_IMPRINT ;



X509_ALGOR *TS_MSG_IMPRINT_get_algo(TS_MSG_IMPRINT *a)
{
    return a->hash_algo;
}
