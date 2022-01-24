#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int len; scalar_t__* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int FUNC0 (char const*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  SVN_ERR_LZ4_DECOMPRESSION_FAILED ; 
 int /*<<< orphan*/  SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,unsigned char const*,int) ; 
 unsigned char* FUNC4 (scalar_t__*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

svn_error_t *
FUNC8(const void *data, apr_size_t len,
                    svn_stringbuf_t *out,
                    apr_size_t limit)
{
  apr_size_t hdrlen;
  int compressed_data_len;
  int decompressed_data_len;
  apr_uint64_t u64;
  const unsigned char *p = data;
  int rv;

  FUNC2(len <= INT_MAX);
  FUNC2(limit <= INT_MAX);

  /* First thing in the string is the original length.  */
  p = FUNC4(&u64, p, p + len);
  if (p == NULL)
    return FUNC5(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, NULL,
                            FUNC1("Decompression of compressed data failed: "
                              "no size"));
  if (u64 > limit)
    return FUNC5(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, NULL,
                            FUNC1("Decompression of compressed data failed: "
                              "size too large"));
  decompressed_data_len = (int)u64;
  hdrlen = p - (const unsigned char *)data;
  compressed_data_len = (int)(len - hdrlen);

  FUNC7(out);
  FUNC6(out, decompressed_data_len);

  if (compressed_data_len == decompressed_data_len)
    {
      /* Data is in the original, uncompressed form. */
      FUNC3(out->data, p, decompressed_data_len);
    }
  else
    {
      rv = FUNC0((const char *)p, out->data, compressed_data_len,
                               decompressed_data_len);
      if (rv < 0)
        return FUNC5(SVN_ERR_LZ4_DECOMPRESSION_FAILED, NULL, NULL);

      if (rv != decompressed_data_len)
        return FUNC5(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA,
                                NULL,
                                FUNC1("Size of uncompressed data "
                                  "does not match stored original length"));
    }

  out->data[decompressed_data_len] = 0;
  out->len = decompressed_data_len;

  return SVN_NO_ERROR;
}