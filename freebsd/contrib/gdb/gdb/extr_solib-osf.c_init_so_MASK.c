#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct so_list {char* so_original_name; char* so_name; TYPE_2__* lm_info; } ;
struct lm_info {int /*<<< orphan*/  secs; } ;
struct TYPE_4__ {int isloader; int nsecs; TYPE_1__* secs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int SO_NAME_MAX_PATH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct so_list*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (unsigned int) ; 

__attribute__((used)) static void
FUNC4 (struct so_list *so, char *name, int isloader, int nsecs)
{
  int namelen, i;

  /* solib.c requires various fields to be initialized to 0.  */
  FUNC1 (so, 0, sizeof *so);

  /* Copy the name.  */
  namelen = FUNC2 (name);
  if (namelen >= SO_NAME_MAX_PATH_SIZE)
    namelen = SO_NAME_MAX_PATH_SIZE - 1;

  FUNC0 (so->so_original_name, name, namelen);
  so->so_original_name[namelen] = '\0';
  FUNC0 (so->so_name, so->so_original_name, namelen + 1);

  /* Allocate section space.  */
  so->lm_info = FUNC3 ((unsigned) &(((struct lm_info *)0)->secs) +
			 nsecs * sizeof *so->lm_info);
  so->lm_info->isloader = isloader;
  so->lm_info->nsecs = nsecs;
  for (i = 0; i < nsecs; i++)
    so->lm_info->secs[i].name = NULL;
}