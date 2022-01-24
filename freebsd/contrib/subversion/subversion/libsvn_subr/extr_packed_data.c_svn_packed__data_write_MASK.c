#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_23__ {scalar_t__ private_data; } ;
typedef  TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_24__ {TYPE_4__* first_byte_stream; TYPE_2__* first_int_stream; int /*<<< orphan*/  byte_stream_count; int /*<<< orphan*/  int_stream_count; } ;
typedef  TYPE_3__ svn_packed__data_root_t ;
struct TYPE_25__ {struct TYPE_25__* next; } ;
typedef  TYPE_4__ svn_packed__byte_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_26__ {TYPE_2__* next; } ;
typedef  TYPE_5__ packed_int_private_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC13(svn_stream_t *stream,
                       svn_packed__data_root_t *root,
                       apr_pool_t *scratch_pool)
{
  svn_packed__int_stream_t *int_stream;
  svn_packed__byte_stream_t *byte_stream;

  /* re-usable data buffers */
  svn_stringbuf_t *compressed
    = FUNC6(1024, scratch_pool);
  svn_stringbuf_t *uncompressed
    = FUNC6(1024, scratch_pool);

  /* write tree structure */
  svn_stringbuf_t *tree_struct
    = FUNC6(127, scratch_pool);

  FUNC10(tree_struct, root->int_stream_count);
  FUNC9(tree_struct, root->first_int_stream);

  FUNC10(tree_struct, root->byte_stream_count);
  FUNC8(tree_struct, root->first_byte_stream);

  FUNC0(FUNC12(stream, tree_struct->len));
  FUNC0(FUNC5(stream, tree_struct->data, &tree_struct->len));

  /* flatten sub-streams, zip them and write them to disk */

  for (int_stream = root->first_int_stream;
       int_stream;
       int_stream = ((packed_int_private_t*)int_stream->private_data)->next)
    {
      apr_size_t len = FUNC4(int_stream);
      FUNC7(uncompressed, len);

      FUNC2(int_stream, uncompressed);
      FUNC0(FUNC11(stream, uncompressed, compressed));
    }

  for (byte_stream = root->first_byte_stream;
       byte_stream;
       byte_stream = byte_stream->next)
    {
      apr_size_t len = FUNC3(byte_stream);
      FUNC7(uncompressed, len);

      FUNC1(byte_stream, uncompressed);
      FUNC0(FUNC11(stream, uncompressed, compressed));
    }

  return SVN_NO_ERROR;
}