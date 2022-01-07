
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fread (void*,int,size_t,int *) ;

__attribute__((used)) static int ZSTD_seekable_read_FILE(void* opaque, void* buffer, size_t n)
{
    size_t const result = fread(buffer, 1, n, (FILE*)opaque);
    if (result != n) {
        return -1;
    }
    return 0;
}
