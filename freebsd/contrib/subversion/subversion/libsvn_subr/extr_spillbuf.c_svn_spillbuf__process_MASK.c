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
typedef  int /*<<< orphan*/  svn_spillbuf_t ;
typedef  int /*<<< orphan*/ * (* svn_spillbuf_read_t ) (scalar_t__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct memblock_t {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct memblock_t**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct memblock_t*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_boolean_t *exhausted,
                      svn_spillbuf_t *buf,
                      svn_spillbuf_read_t read_func,
                      void *read_baton,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t has_seeked = FALSE;
  apr_pool_t *iterpool = FUNC6(scratch_pool);

  *exhausted = FALSE;

  while (TRUE)
    {
      struct memblock_t *mem;
      svn_error_t *err;
      svn_boolean_t stop;

      FUNC5(iterpool);

      /* If this call to read_data() will read from the spill file, and we
         have not seek'd the file... then do it now.  */
      if (!has_seeked)
        FUNC0(FUNC1(&has_seeked, buf, iterpool));

      /* Get some content to pass to the read callback.  */
      FUNC0(FUNC2(&mem, buf, iterpool));
      if (mem == NULL)
        {
          *exhausted = TRUE;
          break;
        }

      err = read_func(&stop, read_baton, mem->data, mem->size, iterpool);

      FUNC3(buf, mem);

      if (err)
        return FUNC4(err);

      /* If the callbacks told us to stop, then we're done for now.  */
      if (stop)
        break;
    }

  FUNC7(iterpool);
  return SVN_NO_ERROR;
}