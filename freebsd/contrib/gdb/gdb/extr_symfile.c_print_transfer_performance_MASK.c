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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC2 (struct ui_file *stream,
			    unsigned long data_count,
			    unsigned long write_count,
			    unsigned long time_count)
{
  FUNC1 (uiout, "Transfer rate: ");
  if (time_count > 0)
    {
      FUNC0 (uiout, "transfer-rate", "%lu", 
			(data_count * 8) / time_count);
      FUNC1 (uiout, " bits/sec");
    }
  else
    {
      FUNC0 (uiout, "transferred-bits", "%lu", (data_count * 8));
      FUNC1 (uiout, " bits in <1 sec");    
    }
  if (write_count > 0)
    {
      FUNC1 (uiout, ", ");
      FUNC0 (uiout, "write-rate", "%lu", data_count / write_count);
      FUNC1 (uiout, " bytes/write");
    }
  FUNC1 (uiout, ".\n");
}