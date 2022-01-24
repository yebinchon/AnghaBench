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
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERP_MI ; 
 int /*<<< orphan*/  INTERP_MI1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 char* last_async_command ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char const*) ; 

void
FUNC12 (const char *section_name,
		  unsigned long sent_so_far,
		  unsigned long total_section,
		  unsigned long total_sent,
		  unsigned long grand_total)
{
  struct timeval time_now, delta, update_threshold;
  static struct timeval last_update;
  static char *previous_sect_name = NULL;
  int new_section;

  if (!FUNC0 (INTERP_MI)
      && !FUNC0 (INTERP_MI1))
    return;

  update_threshold.tv_sec = 0;
  update_threshold.tv_usec = 500000;
  FUNC4 (&time_now, NULL);

  delta.tv_usec = time_now.tv_usec - last_update.tv_usec;
  delta.tv_sec = time_now.tv_sec - last_update.tv_sec;

  if (delta.tv_usec < 0)
    {
      delta.tv_sec -= 1;
      delta.tv_usec += 1000000;
    }

  new_section = (previous_sect_name ?
		 FUNC7 (previous_sect_name, section_name) : 1);
  if (new_section)
    {
      struct cleanup *cleanup_tuple;
      FUNC10 (previous_sect_name);
      previous_sect_name = FUNC11 (section_name);

      if (last_async_command)
	FUNC2 (last_async_command, raw_stdout);
      FUNC2 ("+download", raw_stdout);
      cleanup_tuple = FUNC5 (uiout, NULL);
      FUNC9 (uiout, "section", section_name);
      FUNC8 (uiout, "section-size", total_section);
      FUNC8 (uiout, "total-size", grand_total);
      FUNC1 (cleanup_tuple);
      FUNC6 (uiout, raw_stdout);
      FUNC2 ("\n", raw_stdout);
      FUNC3 (raw_stdout);
    }

  if (delta.tv_sec >= update_threshold.tv_sec &&
      delta.tv_usec >= update_threshold.tv_usec)
    {
      struct cleanup *cleanup_tuple;
      last_update.tv_sec = time_now.tv_sec;
      last_update.tv_usec = time_now.tv_usec;
      if (last_async_command)
	FUNC2 (last_async_command, raw_stdout);
      FUNC2 ("+download", raw_stdout);
      cleanup_tuple = FUNC5 (uiout, NULL);
      FUNC9 (uiout, "section", section_name);
      FUNC8 (uiout, "section-sent", sent_so_far);
      FUNC8 (uiout, "section-size", total_section);
      FUNC8 (uiout, "total-sent", total_sent);
      FUNC8 (uiout, "total-size", grand_total);
      FUNC1 (cleanup_tuple);
      FUNC6 (uiout, raw_stdout);
      FUNC2 ("\n", raw_stdout);
      FUNC3 (raw_stdout);
    }
}