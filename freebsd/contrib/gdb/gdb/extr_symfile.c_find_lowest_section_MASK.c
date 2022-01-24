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
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int SEC_LOAD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3 (bfd *abfd, asection *sect, void *obj)
{
  asection **lowest = (asection **) obj;

  if (0 == (FUNC0 (abfd, sect) & SEC_LOAD))
    return;
  if (!*lowest)
    *lowest = sect;		/* First loadable section */
  else if (FUNC2 (abfd, *lowest) > FUNC2 (abfd, sect))
    *lowest = sect;		/* A lower loadable section */
  else if (FUNC2 (abfd, *lowest) == FUNC2 (abfd, sect)
	   && (FUNC1 (abfd, (*lowest))
	       <= FUNC1 (abfd, sect)))
    *lowest = sect;
}