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
struct mydata {int fd; int /*<<< orphan*/ * buffer; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct archive*,struct mydata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct archive *a, void *data1, void *data2)
{
  struct mydata *mydata1 = (struct mydata *)data1;
  struct mydata *mydata2 = (struct mydata *)data2;
  int r = (ARCHIVE_OK);

  (void)a;
  if (mydata1 && mydata1->fd >= 0)
  {
    FUNC0(mydata1->fd);
    FUNC2(mydata1->buffer);
    mydata1->buffer = NULL;
    mydata1->fd = -1;
  }
  if (mydata2)
  {
    r = FUNC1(a, mydata2);
  }
  return (r);
}