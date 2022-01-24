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
struct varobj_root {int /*<<< orphan*/ * rootvar; scalar_t__ use_selected_frame; int /*<<< orphan*/  frame; int /*<<< orphan*/ * valid_block; int /*<<< orphan*/ * exp; int /*<<< orphan*/ * lang; } ;
struct varobj {struct varobj_root* root; } ;

/* Variables and functions */
 struct varobj* FUNC0 () ; 
 int /*<<< orphan*/  null_frame_id ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct varobj *
FUNC2 (void)
{
  struct varobj *var = FUNC0 ();
  var->root = (struct varobj_root *) FUNC1 (sizeof (struct varobj_root));;
  var->root->lang = NULL;
  var->root->exp = NULL;
  var->root->valid_block = NULL;
  var->root->frame = null_frame_id;
  var->root->use_selected_frame = 0;
  var->root->rootvar = NULL;

  return var;
}