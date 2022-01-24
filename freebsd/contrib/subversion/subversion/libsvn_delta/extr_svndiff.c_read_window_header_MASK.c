#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ MAX_INSTRUCTION_SECTION_LEN ; 
 scalar_t__ SVN_DELTA_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_SVNDIFF_CORRUPT_WINDOW ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN__MAX_ENCODED_UINT_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_stream_t *stream, svn_filesize_t *sview_offset,
                   apr_size_t *sview_len, apr_size_t *tview_len,
                   apr_size_t *inslen, apr_size_t *newlen,
                   apr_size_t *header_len)
{
  unsigned char c;

  /* Read the source view offset by hand, since it's not an apr_size_t. */
  *header_len = 0;
  *sview_offset = 0;
  while (1)
    {
      FUNC0(FUNC2(&c, stream));
      ++*header_len;
      *sview_offset = (*sview_offset << 7) | (c & 0x7f);
      if (!(c & 0x80))
        break;
    }

  /* Read the four size fields. */
  FUNC0(FUNC3(sview_len, header_len, stream));
  FUNC0(FUNC3(tview_len, header_len, stream));
  FUNC0(FUNC3(inslen, header_len, stream));
  FUNC0(FUNC3(newlen, header_len, stream));

  if (*tview_len > SVN_DELTA_WINDOW_SIZE ||
      *sview_len > SVN_DELTA_WINDOW_SIZE ||
      /* for svndiff1, newlen includes the original length */
      *newlen > SVN_DELTA_WINDOW_SIZE + SVN__MAX_ENCODED_UINT_LEN ||
      *inslen > MAX_INSTRUCTION_SECTION_LEN)
    return FUNC4(SVN_ERR_SVNDIFF_CORRUPT_WINDOW, NULL,
                            FUNC1("Svndiff contains a too-large window"));

  /* Check for integer overflow.  */
  if (*sview_offset < 0 || *inslen + *newlen < *inslen
      || *sview_len + *tview_len < *sview_len
      || (apr_size_t)*sview_offset + *sview_len < (apr_size_t)*sview_offset)
    return FUNC4(SVN_ERR_SVNDIFF_CORRUPT_WINDOW, NULL,
                            FUNC1("Svndiff contains corrupt window header"));

  return SVN_NO_ERROR;
}