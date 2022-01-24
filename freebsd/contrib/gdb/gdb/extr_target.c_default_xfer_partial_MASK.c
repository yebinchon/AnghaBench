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
struct target_ops {int (* to_xfer_memory ) (int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ *,struct target_ops*) ;TYPE_1__* beneath; } ;
struct cleanup {int dummy; } ;
typedef  enum target_object { ____Placeholder_target_object } target_object ;
typedef  int /*<<< orphan*/  ULONGEST ;
struct TYPE_2__ {int (* to_xfer_partial ) (TYPE_1__*,int,char const*,void*,void const*,int /*<<< orphan*/ ,int) ;} ;
typedef  int LONGEST ;

/* Variables and functions */
 int TARGET_OBJECT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 scalar_t__ errno ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ *,struct target_ops*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ *,struct target_ops*) ; 
 int FUNC5 (TYPE_1__*,int,char const*,void*,void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xfree ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static LONGEST
FUNC7 (struct target_ops *ops, enum target_object object,
		      const char *annex, void *readbuf, 
		      const void *writebuf, ULONGEST offset, LONGEST len)
{
  if (object == TARGET_OBJECT_MEMORY
      && ops->to_xfer_memory != NULL)
    /* If available, fall back to the target's "to_xfer_memory"
       method.  */
    {
      int xfered = -1;
      errno = 0;
      if (writebuf != NULL)
	{
	  void *buffer = FUNC6 (len);
	  struct cleanup *cleanup = FUNC1 (xfree, buffer);
	  FUNC2 (buffer, writebuf, len);
	  xfered = ops->to_xfer_memory (offset, buffer, len, 1/*write*/, NULL,
					ops);
	  FUNC0 (cleanup);
	}
      if (readbuf != NULL)
	xfered = ops->to_xfer_memory (offset, readbuf, len, 0/*read*/, NULL,
				      ops);
      if (xfered > 0)
	return xfered;
      else if (xfered == 0 && errno == 0)
	/* "to_xfer_memory" uses 0, cross checked against ERRNO as one
           indication of an error.  */
	return 0;
      else
	return -1;
    }
  else if (ops->beneath != NULL)
    return ops->beneath->to_xfer_partial (ops->beneath, object, annex,
					  readbuf, writebuf, offset, len);
  else
    return -1;
}