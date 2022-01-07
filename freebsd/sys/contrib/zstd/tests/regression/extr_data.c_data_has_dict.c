
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * url; } ;
struct TYPE_5__ {TYPE_1__ dict; } ;
typedef TYPE_2__ data_t ;



int data_has_dict(data_t const* data) {
    return data->dict.url != ((void*)0);
}
