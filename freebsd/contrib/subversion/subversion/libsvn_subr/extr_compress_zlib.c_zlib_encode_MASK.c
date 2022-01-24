#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; unsigned long blocksize; scalar_t__* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int MIN_COMPRESS_SIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN__COMPRESSION_NONE ; 
 int SVN__MAX_ENCODED_UINT_LEN ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (unsigned char*,unsigned long*,unsigned char const*,int,int) ; 
 int FUNC2 (int) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *data,
            apr_size_t len,
            svn_stringbuf_t *out,
            int compression_level)
{
  unsigned long endlen;
  apr_size_t intlen;
  unsigned char buf[SVN__MAX_ENCODED_UINT_LEN], *p;

  FUNC8(out);
  p = FUNC3(buf, (apr_uint64_t)len);
  FUNC6(out, (const char *)buf, p - buf);

  intlen = out->len;

  /* Compression initialization overhead is considered to large for
     short buffers.  Also, if we don't actually want to compress data,
     ZLIB will produce an output no shorter than the input.  Hence,
     the DATA would directly appended to OUT, so we can do that directly
     without calling ZLIB before. */
  if (len < MIN_COMPRESS_SIZE || compression_level == SVN__COMPRESSION_NONE)
    {
      FUNC6(out, data, len);
    }
  else
    {
      int zerr;

      FUNC7(out, FUNC2(len) + intlen);
      endlen = out->blocksize;

      zerr = FUNC1((unsigned char *)out->data + intlen, &endlen,
                       (const unsigned char *)data, len,
                       compression_level);
      if (zerr != Z_OK)
        return FUNC5(FUNC4(
                                 zerr, "compress2",
                                 FUNC0("Compression of svndiff data failed")));

      /* Compression didn't help :(, just append the original text */
      if (endlen >= len)
        {
          FUNC6(out, data, len);
          return SVN_NO_ERROR;
        }
      out->len = endlen + intlen;
      out->data[out->len] = 0;
    }
  return SVN_NO_ERROR;
}