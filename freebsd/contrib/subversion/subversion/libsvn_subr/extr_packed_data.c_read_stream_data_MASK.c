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
struct TYPE_6__ {size_t len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_stream_t *stream,
                 apr_size_t uncompressed_len,
                 svn_stringbuf_t *uncompressed,
                 svn_stringbuf_t *compressed)
{
  apr_uint64_t len;
  apr_size_t compressed_len;

  FUNC0(FUNC1(stream, &len));
  compressed_len = (apr_size_t)len;

  FUNC4(compressed, compressed_len);
  compressed->len = compressed_len;
  FUNC0(FUNC3(stream, compressed->data, &compressed->len));
  compressed->data[compressed_len] = '\0';

  FUNC0(FUNC2(compressed->data, compressed->len,
                               uncompressed, uncompressed_len));

  return SVN_NO_ERROR;
}