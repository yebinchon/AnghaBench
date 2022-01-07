
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ data_type_t ;
struct TYPE_5__ {int path; } ;
typedef TYPE_1__ data_resource_t ;
struct TYPE_6__ {void* error; int * file; int xxhash64; } ;
typedef TYPE_2__ curl_data_t ;


 void* ENOMEM ;
 int UTIL_isDirectory (int ) ;
 int XXH64_reset (int *,int ) ;
 int assert (int ) ;
 char* cat3 (char*,int ,char*) ;
 scalar_t__ data_type_file ;
 void* errno ;
 int free (char*) ;
 int g_data_dir ;
 void* popen (char*,char*) ;

__attribute__((used)) static curl_data_t curl_data_create(
    data_resource_t const* resource,
    data_type_t type) {
    curl_data_t cdata = {};

    XXH64_reset(&cdata.xxhash64, 0);

    assert(UTIL_isDirectory(g_data_dir));

    if (type == data_type_file) {

        char* cmd = cat3("zstd -dqfo '", resource->path, "'");
        if (cmd == ((void*)0)) {
            cdata.error = ENOMEM;
            return cdata;
        }
        cdata.file = popen(cmd, "w");
        free(cmd);
    } else {

        char* cmd = cat3("zstd -dc | tar -x -C '", g_data_dir, "'");
        if (cmd == ((void*)0)) {
            cdata.error = ENOMEM;
            return cdata;
        }
        cdata.file = popen(cmd, "w");
        free(cmd);
    }
    if (cdata.file == ((void*)0)) {
        cdata.error = errno;
    }

    return cdata;
}
