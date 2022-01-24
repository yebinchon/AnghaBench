#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_24__ {scalar_t__ private_data; } ;
typedef  TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_25__ {TYPE_4__* first_byte_stream; TYPE_2__* first_int_stream; } ;
typedef  TYPE_3__ svn_packed__data_root_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef  TYPE_4__ svn_packed__byte_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_27__ {TYPE_2__* next; } ;
typedef  TYPE_5__ packed_int_private_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int*) ; 
 TYPE_1__* FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*,int*) ; 

svn_error_t *
FUNC15(svn_packed__data_root_t **root_p,
                      svn_stream_t *stream,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_uint64_t i;
  apr_uint64_t count;

  svn_packed__int_stream_t *int_stream;
  svn_packed__byte_stream_t *byte_stream;
  svn_packed__data_root_t *root = FUNC10(result_pool);

  svn_stringbuf_t *compressed
    = FUNC12(1024, scratch_pool);
  svn_stringbuf_t *uncompressed
    = FUNC12(1024, scratch_pool);

  /* read tree structure */

  apr_uint64_t tree_struct_size;
  svn_stringbuf_t *tree_struct;

  FUNC0(FUNC8(stream, &tree_struct_size));
  tree_struct
    = FUNC12((apr_size_t)tree_struct_size, scratch_pool);
  tree_struct->len = (apr_size_t)tree_struct_size;

  FUNC0(FUNC11(stream, tree_struct->data, &tree_struct->len));
  tree_struct->data[tree_struct->len] = '\0';

  /* reconstruct tree structure */

  count = FUNC6(tree_struct);
  for (i = 0; i < count; ++i)
    FUNC5(tree_struct,
                              FUNC9(root, FALSE,
                                                                 FALSE));

  count = FUNC6(tree_struct);
  for (i = 0; i < count; ++i)
    FUNC4(tree_struct,
                               FUNC1(root),
                               root->first_int_stream);

  /* read sub-stream data from disk, unzip it and buffer it */

  for (int_stream = root->first_int_stream;
       int_stream;
       int_stream = ((packed_int_private_t*)int_stream->private_data)->next)
    {
      apr_size_t offset = 0;
      FUNC0(FUNC7(stream,
                               FUNC3(int_stream),
                               uncompressed, compressed));
      FUNC14(int_stream, uncompressed, &offset);
    }

  for (byte_stream = root->first_byte_stream;
       byte_stream;
       byte_stream = byte_stream->next)
    {
      apr_size_t offset = 0;
      FUNC0(FUNC7(stream,
                               FUNC2(byte_stream),
                               uncompressed, compressed));
      FUNC13(byte_stream, uncompressed, &offset);
    }

  *root_p = root;
  return SVN_NO_ERROR;
}