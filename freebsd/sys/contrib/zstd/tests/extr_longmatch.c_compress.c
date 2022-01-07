
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_outBuffer ;
struct TYPE_3__ {void const* member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_1__ ZSTD_inBuffer ;
typedef int ZSTD_CStream ;


 size_t ZSTD_compressStream (int *,int *,TYPE_1__*) ;
 size_t ZSTD_flushStream (int *,int *) ;
 scalar_t__ ZSTD_isError (size_t const) ;

__attribute__((used)) static int
compress(ZSTD_CStream *ctx, ZSTD_outBuffer out, const void *data, size_t size)
{
  ZSTD_inBuffer in = { data, size, 0 };
  while (in.pos < in.size) {
    ZSTD_outBuffer tmp = out;
    const size_t rc = ZSTD_compressStream(ctx, &tmp, &in);
    if (ZSTD_isError(rc)) return 1;
  }
  { ZSTD_outBuffer tmp = out;
    const size_t rc = ZSTD_flushStream(ctx, &tmp);
    if (rc != 0) { return 1; }
  }
  return 0;
}
