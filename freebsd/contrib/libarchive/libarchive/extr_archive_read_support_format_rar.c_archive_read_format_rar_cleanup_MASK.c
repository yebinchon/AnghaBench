#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct rar* window; } ;
struct rar {int /*<<< orphan*/  ppmd7_context; TYPE_1__ lzss; struct rar* unp_buffer; struct rar* dbo; struct rar* filename_save; struct rar* filename; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* Ppmd7_Free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 TYPE_3__ __archive_ppmd7_functions ; 
 int /*<<< orphan*/  FUNC0 (struct rar*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a)
{
  struct rar *rar;

  rar = (struct rar *)(a->format->data);
  FUNC1(a);
  FUNC0(rar->filename);
  FUNC0(rar->filename_save);
  FUNC0(rar->dbo);
  FUNC0(rar->unp_buffer);
  FUNC0(rar->lzss.window);
  __archive_ppmd7_functions.Ppmd7_Free(&rar->ppmd7_context);
  FUNC0(rar);
  (a->format->data) = NULL;
  return (ARCHIVE_OK);
}