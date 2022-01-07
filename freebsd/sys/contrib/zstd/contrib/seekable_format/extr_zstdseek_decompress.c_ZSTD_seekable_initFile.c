
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ ZSTD_seekable_customFile ;
typedef int ZSTD_seekable ;
typedef int FILE ;


 size_t ZSTD_seekable_initAdvanced (int *,TYPE_1__) ;
 int ZSTD_seekable_read_FILE ;
 int ZSTD_seekable_seek_FILE ;

size_t ZSTD_seekable_initFile(ZSTD_seekable* zs, FILE* src)
{
    ZSTD_seekable_customFile srcFile = {src, &ZSTD_seekable_read_FILE,
                                        &ZSTD_seekable_seek_FILE};
    return ZSTD_seekable_initAdvanced(zs, srcFile);
}
