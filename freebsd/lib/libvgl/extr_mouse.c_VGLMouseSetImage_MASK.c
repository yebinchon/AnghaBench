#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  VYsize; int /*<<< orphan*/  VXsize; } ;
typedef  TYPE_1__ VGLBitmap ;
struct TYPE_12__ {struct TYPE_12__* Bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMBUF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__* VGLMouseAndMask ; 
 TYPE_2__* VGLMouseOrMask ; 
 int VGL_MOUSEHIDE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(VGLBitmap *AndMask, VGLBitmap *OrMask)
{
  int mousemode;

  mousemode = FUNC3(VGL_MOUSEHIDE);

  VGLMouseAndMask = AndMask;

  if (VGLMouseOrMask != NULL) {
    FUNC4(VGLMouseOrMask->Bitmap);
    FUNC4(VGLMouseOrMask);
  }
  VGLMouseOrMask = FUNC1(MEMBUF, OrMask->VXsize, OrMask->VYsize, 0);
  FUNC0(VGLMouseOrMask);
  FUNC2(OrMask, VGLMouseOrMask);

  FUNC3(mousemode);
}