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
struct objfile {int /*<<< orphan*/  obfd; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__) ; 

__attribute__((used)) static char *
FUNC6 (struct objfile *objfile, unsigned long *crc32_out)
{
  asection *sect;
  bfd_size_type debuglink_size;
  unsigned long crc32;
  char *contents;
  int crc_offset;
  unsigned char *p;
  
  sect = FUNC1 (objfile->obfd, ".gnu_debuglink");

  if (sect == NULL)
    return NULL;

  debuglink_size = FUNC3 (objfile->obfd, sect);
  
  contents = FUNC5 (debuglink_size);
  FUNC2 (objfile->obfd, sect, contents,
			    (file_ptr)0, (bfd_size_type)debuglink_size);

  /* Crc value is stored after the filename, aligned up to 4 bytes. */
  crc_offset = FUNC4 (contents) + 1;
  crc_offset = (crc_offset + 3) & ~3;

  crc32 = FUNC0 (objfile->obfd, (bfd_byte *) (contents + crc_offset));
  
  *crc32_out = crc32;
  return contents;
}