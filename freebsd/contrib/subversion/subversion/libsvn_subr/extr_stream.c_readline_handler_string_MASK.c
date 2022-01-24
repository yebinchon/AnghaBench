#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct string_stream_baton {int amt_read; TYPE_1__* str; } ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {char* data; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                        svn_stringbuf_t **stringbuf,
                        const char *eol,
                        svn_boolean_t *eof,
                        apr_pool_t *pool)
{
  struct string_stream_baton *btn = baton;
  const char *pos = btn->str->data + btn->amt_read;
  const char *eol_pos;

  eol_pos = FUNC1(pos, eol);
  if (eol_pos)
    {
      apr_size_t eol_len = FUNC0(eol);

      *eof = FALSE;
      *stringbuf = FUNC2(pos, eol_pos - pos, pool);
      btn->amt_read += (eol_pos - pos + eol_len);
    }
  else
    {
      *eof = TRUE;
      *stringbuf = FUNC2(pos, btn->str->len - btn->amt_read,
                                         pool);
      btn->amt_read = btn->str->len;
    }

  return SVN_NO_ERROR;
}