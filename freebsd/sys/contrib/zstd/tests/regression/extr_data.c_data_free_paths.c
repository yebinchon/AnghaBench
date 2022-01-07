
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * path; } ;
struct TYPE_5__ {int * path; } ;
struct TYPE_7__ {TYPE_2__ dict; TYPE_1__ data; } ;
typedef TYPE_3__ data_t ;


 int assert (int ) ;
 int free (void*) ;

__attribute__((used)) static void data_free_paths(data_t* const* data) {
    assert(data != ((void*)0));
    for (; *data != ((void*)0); ++data) {
        data_t* datum = *data;
        free((void*)datum->data.path);
        free((void*)datum->dict.path);
        datum->data.path = ((void*)0);
        datum->dict.path = ((void*)0);
    }
}
