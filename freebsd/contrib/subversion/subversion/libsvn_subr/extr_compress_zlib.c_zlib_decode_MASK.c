#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; scalar_t__* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_uint64_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,unsigned char const*,int) ; 
 unsigned char* FUNC2 (int*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (unsigned char*,unsigned long*,unsigned char const*,int) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const unsigned char *in, apr_size_t inLen, svn_stringbuf_t *out,
            apr_size_t limit)
{
  apr_size_t len;
  apr_uint64_t size;
  const unsigned char *oldplace = in;

  /* First thing in the string is the original length.  */
  in = FUNC2(&size, in, in + inLen);
  len = (apr_size_t)size;
  if (in == NULL || len != size)
    return FUNC4(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, NULL,
                            FUNC0("Decompression of zlib compressed data failed: no size"));
  if (len > limit)
    return FUNC4(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, NULL,
                            FUNC0("Decompression of zlib compressed data failed: "
                              "size too large"));

  /* We need to subtract the size of the encoded original length off the
   *      still remaining input length.  */
  inLen -= (in - oldplace);
  if (inLen == len)
    {
      FUNC6(out, len);
      FUNC1(out->data, in, len);
      out->data[len] = 0;
      out->len = len;

      return SVN_NO_ERROR;
    }
  else
    {
      unsigned long zlen = len;
      int zerr;

      FUNC6(out, len);
      zerr = FUNC7((unsigned char *)out->data, &zlen, in, inLen);
      if (zerr != Z_OK)
        return FUNC5(FUNC3(
                                 zerr, "uncompress",
                                 FUNC0("Decompression of svndiff data failed")));

      /* Zlib should not produce something that has a different size than the
         original length we stored. */
      if (zlen != len)
        return FUNC4(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA,
                                NULL,
                                FUNC0("Size of uncompressed data "
                                  "does not match stored original length"));
      out->data[zlen] = 0;
      out->len = zlen;
    }
  return SVN_NO_ERROR;
}