
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int archive_sha1_ctx ;


 int ARCHIVE_FAILED ;

__attribute__((used)) static int
__archive_stub_sha1final(archive_sha1_ctx *ctx, void *md)
{
 (void)ctx;
 (void)md;
 return (ARCHIVE_FAILED);
}
