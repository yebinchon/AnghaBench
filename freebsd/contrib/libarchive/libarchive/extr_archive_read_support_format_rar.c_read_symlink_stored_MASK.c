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
struct rar {scalar_t__ packed_size; } ;
struct archive_string_conv {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_read*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string_conv*) ; 
 scalar_t__ errno ; 
 void* FUNC4 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, struct archive_entry *entry,
                    struct archive_string_conv *sconv)
{
  const void *h;
  const char *p;
  struct rar *rar;
  int ret = (ARCHIVE_OK);

  rar = (struct rar *)(a->format->data);
  if ((h = FUNC4(a, (size_t)rar->packed_size, NULL)) == NULL)
    return (ARCHIVE_FATAL);
  p = h;

  if (FUNC1(entry,
      p, (size_t)rar->packed_size, sconv))
  {
    if (errno == ENOMEM)
    {
      FUNC2(&a->archive, ENOMEM,
                        "Can't allocate memory for link");
      return (ARCHIVE_FATAL);
    }
    FUNC2(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "link cannot be converted from %s to current locale.",
                      FUNC3(sconv));
    ret = (ARCHIVE_WARN);
  }
  FUNC0(a, rar->packed_size);
  return ret;
}