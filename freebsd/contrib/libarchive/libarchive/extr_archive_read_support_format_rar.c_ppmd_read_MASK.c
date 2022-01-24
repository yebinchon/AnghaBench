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
struct rar_br {int dummy; } ;
struct rar {scalar_t__ valid; struct rar_br br; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct TYPE_4__ {struct archive_read* a; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_2__ IByteIn ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rar_br*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rar_br*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_read*,struct rar_br*,int) ; 

__attribute__((used)) static Byte
FUNC4(void *p)
{
  struct archive_read *a = ((IByteIn*)p)->a;
  struct rar *rar = (struct rar *)(a->format->data);
  struct rar_br *br = &(rar->br);
  Byte b;
  if (!FUNC3(a, br, 8))
  {
    FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Truncated RAR file data");
    rar->valid = 0;
    return 0;
  }
  b = FUNC1(br, 8);
  FUNC2(br, 8);
  return b;
}