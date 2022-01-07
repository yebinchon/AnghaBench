
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * path; } ;
struct TYPE_7__ {int * path; } ;
struct TYPE_8__ {TYPE_1__ dict; TYPE_2__ data; int name; } ;
typedef TYPE_3__ data_t ;


 int ENOMEM ;
 int assert (int ) ;
 int * cat2 (int *,char*) ;
 int * cat3 (char const*,char*,int ) ;
 scalar_t__ data_has_dict (TYPE_3__* const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int data_create_paths(data_t* const* data, char const* dir) {
    size_t const dirlen = strlen(dir);
    assert(data != ((void*)0));
    for (; *data != ((void*)0); ++data) {
        data_t* const datum = *data;
        datum->data.path = cat3(dir, "/", datum->name);
        if (datum->data.path == ((void*)0))
            return ENOMEM;
        if (data_has_dict(datum)) {
            datum->dict.path = cat2(datum->data.path, ".dict");
            if (datum->dict.path == ((void*)0))
                return ENOMEM;
        }
    }
    return 0;
}
