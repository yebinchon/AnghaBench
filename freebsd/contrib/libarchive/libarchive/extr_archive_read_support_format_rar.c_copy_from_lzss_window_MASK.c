#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * window; } ;
struct rar {void* unp_buffer; int unp_buffer_size; size_t unp_offset; TYPE_2__ lzss; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, const void **buffer,
                        int64_t startpos, int length)
{
  int windowoffs, firstpart;
  struct rar *rar = (struct rar *)(a->format->data);

  if (!rar->unp_buffer)
  {
    if ((rar->unp_buffer = FUNC3(rar->unp_buffer_size)) == NULL)
    {
      FUNC0(&a->archive, ENOMEM,
                        "Unable to allocate memory for uncompressed data.");
      return (ARCHIVE_FATAL);
    }
  }

  windowoffs = FUNC1(&rar->lzss, startpos);
  if(windowoffs + length <= FUNC2(&rar->lzss)) {
    FUNC4(&rar->unp_buffer[rar->unp_offset], &rar->lzss.window[windowoffs],
           length);
  } else if (length <= FUNC2(&rar->lzss)) {
    firstpart = FUNC2(&rar->lzss) - windowoffs;
    if (firstpart < 0) {
      FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                        "Bad RAR file data");
      return (ARCHIVE_FATAL);
    }
    if (firstpart < length) {
      FUNC4(&rar->unp_buffer[rar->unp_offset],
             &rar->lzss.window[windowoffs], firstpart);
      FUNC4(&rar->unp_buffer[rar->unp_offset + firstpart],
             &rar->lzss.window[0], length - firstpart);
    } else {
      FUNC4(&rar->unp_buffer[rar->unp_offset],
             &rar->lzss.window[windowoffs], length);
    }
  } else {
      FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                        "Bad RAR file data");
      return (ARCHIVE_FATAL);
  }
  rar->unp_offset += length;
  if (rar->unp_offset >= rar->unp_buffer_size)
    *buffer = rar->unp_buffer;
  else
    *buffer = NULL;
  return (ARCHIVE_OK);
}