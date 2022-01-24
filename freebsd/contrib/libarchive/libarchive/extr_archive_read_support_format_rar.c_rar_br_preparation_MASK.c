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
struct rar_br {scalar_t__ cache_avail; int /*<<< orphan*/ * next_in; int /*<<< orphan*/  avail_in; } ;
struct rar {scalar_t__ bytes_remaining; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,struct rar_br*) ; 
 int /*<<< orphan*/ * FUNC2 (struct archive_read*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a, struct rar_br *br)
{
  struct rar *rar = (struct rar *)(a->format->data);

  if (rar->bytes_remaining > 0) {
    br->next_in = FUNC2(a, 1, &(br->avail_in));
    if (br->next_in == NULL) {
      FUNC0(&a->archive,
          ARCHIVE_ERRNO_FILE_FORMAT,
          "Truncated RAR file data");
      return (ARCHIVE_FATAL);
    }
    if (br->cache_avail == 0)
      (void)FUNC1(a, br);
  }
  return (ARCHIVE_OK);
}