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
struct find_sect_args {void* bss_start; void* data_start; void* text_start; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_DATA ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (bfd *abfd, asection *sect, void *obj)
{
  struct find_sect_args *args = (struct find_sect_args *) obj;

  if (FUNC0 (abfd, sect) & (SEC_CODE & SEC_READONLY))
    args->text_start = FUNC1 (abfd, sect);
  else if (FUNC0 (abfd, sect) & SEC_ALLOC)
    {
      if (FUNC0 (abfd, sect) & SEC_LOAD)
	{
	  /* Exclude .ctor and .dtor sections which have SEC_CODE set but not
	     SEC_DATA.  */
	  if (FUNC0 (abfd, sect) & SEC_DATA)
	    args->data_start = FUNC1 (abfd, sect);
	}
      else
	args->bss_start = FUNC1 (abfd, sect);
    }
}