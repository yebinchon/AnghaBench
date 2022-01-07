
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int archive_md5_ctx ;


 int ARCHIVE_FAILED ;

__attribute__((used)) static int
__archive_stub_md5update(archive_md5_ctx *ctx, const void *indata,
    size_t insize)
{
 (void)ctx;
 (void)indata;
 (void)insize;
 return (ARCHIVE_FAILED);
}
