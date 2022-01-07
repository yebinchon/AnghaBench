
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ capacity; scalar_t__ size; int * data; } ;
typedef TYPE_1__ data_buffer_t ;
typedef int buffer ;
typedef int FILE ;


 scalar_t__ const UTIL_FILESIZE_UNKNOWN ;
 scalar_t__ UTIL_getFileSize (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fread (int *,int,scalar_t__,int *) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__ const) ;
 int memset (TYPE_1__*,int ,int) ;
 int stderr ;

data_buffer_t data_buffer_read(char const* filename) {
    data_buffer_t buffer = {};

    uint64_t const size = UTIL_getFileSize(filename);
    if (size == UTIL_FILESIZE_UNKNOWN) {
        fprintf(stderr, "unknown size for %s\n", filename);
        return buffer;
    }

    buffer.data = (uint8_t*)malloc(size);
    if (buffer.data == ((void*)0)) {
        fprintf(stderr, "malloc failed\n");
        return buffer;
    }
    buffer.capacity = size;

    FILE* file = fopen(filename, "rb");
    if (file == ((void*)0)) {
        fprintf(stderr, "file null\n");
        goto err;
    }
    buffer.size = fread(buffer.data, 1, buffer.capacity, file);
    fclose(file);
    if (buffer.size != buffer.capacity) {
        fprintf(stderr, "read %zu != %zu\n", buffer.size, buffer.capacity);
        goto err;
    }

    return buffer;
err:
    free(buffer.data);
    memset(&buffer, 0, sizeof(buffer));
    return buffer;
}
