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
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_SVNDIFF_UNEXPECTED_END ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

svn_error_t *
FUNC7(svn_txdelta_window_t **window,
                                svn_stream_t *stream,
                                int svndiff_version,
                                apr_pool_t *pool)
{
  svn_filesize_t sview_offset;
  apr_size_t sview_len, tview_len, inslen, newlen, len, header_len;
  unsigned char *buf;

  FUNC0(FUNC4(stream, &sview_offset, &sview_len, &tview_len,
                             &inslen, &newlen, &header_len));
  len = inslen + newlen;
  buf = FUNC2(pool, len);
  FUNC0(FUNC6(stream, (char*)buf, &len));
  if (len < inslen + newlen)
    return FUNC5(SVN_ERR_SVNDIFF_UNEXPECTED_END, NULL,
                            FUNC1("Unexpected end of svndiff input"));
  *window = FUNC2(pool, sizeof(**window));
  return FUNC3(*window, sview_offset, sview_len, tview_len, inslen,
                       newlen, buf, pool, svndiff_version);
}