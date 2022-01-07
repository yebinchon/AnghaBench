
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sct_source_t ;
struct TYPE_3__ {int source; } ;
typedef TYPE_1__ SCT ;



sct_source_t SCT_get_source(const SCT *sct)
{
    return sct->source;
}
