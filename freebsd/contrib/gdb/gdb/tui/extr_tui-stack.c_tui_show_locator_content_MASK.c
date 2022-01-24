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
struct TYPE_2__ {int /*<<< orphan*/  locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int /*<<< orphan*/  content_in_use; int /*<<< orphan*/ * handle; scalar_t__* content; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 struct tui_gen_win_info* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9 (void)
{
  char *string;
  struct tui_gen_win_info * locator;

  locator = FUNC0 ();

  if (locator != NULL && locator->handle != (WINDOW *) NULL)
    {
      struct tui_win_element * element;

      element = (struct tui_win_element *) locator->content[0];

      string = FUNC1 (&element->which_element.locator);
      FUNC5 (locator->handle, 0, 0);
      FUNC7 (locator->handle);
      FUNC3 (locator->handle, string);
      FUNC4 (locator->handle);
      FUNC6 (locator->handle);
      FUNC2 (locator);
      FUNC5 (locator->handle, 0, 0);
      FUNC8 (string);
      locator->content_in_use = TRUE;
    }
}