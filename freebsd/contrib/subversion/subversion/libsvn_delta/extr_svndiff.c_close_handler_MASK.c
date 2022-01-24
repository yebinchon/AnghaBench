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
typedef  int /*<<< orphan*/  svn_error_t ;
struct decode_baton {int header_bytes; int /*<<< orphan*/  pool; int /*<<< orphan*/  consumer_baton; int /*<<< orphan*/ * (* consumer_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_1__* buffer; scalar_t__ error_on_early_close; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_SVNDIFF_UNEXPECTED_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton)
{
  struct decode_baton *db = (struct decode_baton *) baton;
  svn_error_t *err;

  /* Make sure that we're at a plausible end of stream, returning an
     error if we are expected to do so.  */
  if ((db->error_on_early_close)
      && (db->header_bytes < 4 || db->buffer->len != 0))
    return FUNC2(SVN_ERR_SVNDIFF_UNEXPECTED_END, NULL,
                            FUNC0("Unexpected end of svndiff input"));

  /* Tell the window consumer that we're done, and clean up.  */
  err = db->consumer_func(NULL, db->consumer_baton);
  FUNC3(db->pool);
  return err;
}