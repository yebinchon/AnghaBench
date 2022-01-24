#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int sview_len; int tview_len; int num_ops; int /*<<< orphan*/ * new_data; TYPE_2__* ops; scalar_t__ src_ops; int /*<<< orphan*/  sview_offset; } ;
typedef  TYPE_1__ svn_txdelta_window_t ;
struct TYPE_12__ {scalar_t__ action_code; int offset; int length; } ;
typedef  TYPE_2__ svn_txdelta_op_t ;
struct TYPE_13__ {int len; scalar_t__ data; } ;
typedef  TYPE_3__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_INSTRUCTION_SECTION_LEN ; 
 int /*<<< orphan*/  SVN_DELTA_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,unsigned char const*,unsigned char const*,int,int,int) ; 
 unsigned char* FUNC4 (TYPE_2__*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_txdelta_new ; 
 scalar_t__ svn_txdelta_source ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_txdelta_window_t *window, svn_filesize_t sview_offset,
              apr_size_t sview_len, apr_size_t tview_len, apr_size_t inslen,
              apr_size_t newlen, const unsigned char *data, apr_pool_t *pool,
              unsigned int version)
{
  const unsigned char *insend;
  int ninst;
  apr_size_t npos;
  svn_txdelta_op_t *ops, *op;
  svn_string_t *new_data;

  window->sview_offset = sview_offset;
  window->sview_len = sview_len;
  window->tview_len = tview_len;

  insend = data + inslen;

  if (version == 2)
    {
      svn_stringbuf_t *instout = FUNC9(pool);
      svn_stringbuf_t *ndout = FUNC9(pool);

      FUNC0(FUNC5(insend, newlen, ndout,
                                  SVN_DELTA_WINDOW_SIZE));
      FUNC0(FUNC5(data, insend - data, instout,
                                  MAX_INSTRUCTION_SECTION_LEN));

      newlen = ndout->len;
      data = (unsigned char *)instout->data;
      insend = (unsigned char *)instout->data + instout->len;

      new_data = FUNC8(ndout);
    }
  else if (version == 1)
    {
      svn_stringbuf_t *instout = FUNC9(pool);
      svn_stringbuf_t *ndout = FUNC9(pool);

      FUNC0(FUNC6(insend, newlen, ndout,
                                   SVN_DELTA_WINDOW_SIZE));
      FUNC0(FUNC6(data, insend - data, instout,
                                   MAX_INSTRUCTION_SECTION_LEN));

      newlen = ndout->len;
      data = (unsigned char *)instout->data;
      insend = (unsigned char *)instout->data + instout->len;

      new_data = FUNC8(ndout);
    }
  else
    {
      /* Copy the data because an svn_string_t must have the invariant
         data[len]=='\0'. */
      new_data = FUNC7((const char*)insend, newlen, pool);
    }

  /* Count the instructions and make sure they are all valid.  */
  FUNC0(FUNC3(&ninst, data, insend,
                                        sview_len, tview_len, newlen));

  /* Allocate a buffer for the instructions and decode them. */
  ops = FUNC2(pool, ninst * sizeof(*ops));
  npos = 0;
  window->src_ops = 0;
  for (op = ops; op < ops + ninst; op++)
    {
      data = FUNC4(op, data, insend);
      if (op->action_code == svn_txdelta_source)
        ++window->src_ops;
      else if (op->action_code == svn_txdelta_new)
        {
          op->offset = npos;
          npos += op->length;
        }
    }
  FUNC1(data == insend);

  window->ops = ops;
  window->num_ops = ninst;
  window->new_data = new_data;

  return SVN_NO_ERROR;
}