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
struct tui_locator_element {scalar_t__* file_name; } ;
struct TYPE_2__ {struct tui_locator_element locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int /*<<< orphan*/ ** content; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LOCATOR_ELEMENT_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,char const*) ; 
 struct tui_gen_win_info* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (const char *filename)
{
  struct tui_gen_win_info * locator = FUNC1 ();
  struct tui_locator_element * element;

  if (locator->content[0] == NULL)
    {
      FUNC2 (filename, NULL, 0, 0);
      return;
    }

  element = &((struct tui_win_element *) locator->content[0])->which_element.locator;
  element->file_name[0] = 0;
  FUNC0 (element->file_name, MAX_LOCATOR_ELEMENT_LEN, filename);
}