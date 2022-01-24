#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_8__ {int Type; int VXsize; int Ysize; int VYsize; int PixelBytes; int /*<<< orphan*/  Bitmap; int /*<<< orphan*/  Yorigin; int /*<<< orphan*/  Xorigin; int /*<<< orphan*/  Xsize; } ;
typedef  TYPE_1__ VGLBitmap ;
struct TYPE_9__ {int va_line_width; int /*<<< orphan*/  va_window_size; } ;

/* Variables and functions */
#define  MEMBUF 139 
 TYPE_7__ VGLAdpInfo ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* VGLDisplay ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ VGLVDisplay ; 
 int VGL_MOUSEHIDE ; 
#define  VIDBUF16 138 
#define  VIDBUF16S 137 
#define  VIDBUF24 136 
#define  VIDBUF24S 135 
#define  VIDBUF32 134 
#define  VIDBUF32S 133 
#define  VIDBUF4 132 
#define  VIDBUF4S 131 
#define  VIDBUF8 130 
#define  VIDBUF8S 129 
#define  VIDBUF8X 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

void
FUNC12(VGLBitmap *object, u_long color)
{
  VGLBitmap src;
  int i, len, mousemode, offset;

  FUNC0();
  if (object == VGLDisplay) {
    FUNC1();
    FUNC12(&VGLVDisplay, color);
  } else if (object->Type != MEMBUF)
    return;		/* invalid */
  switch (object->Type) {
  case MEMBUF:
  case VIDBUF8:
  case VIDBUF8S:
  case VIDBUF16:
  case VIDBUF16S:
  case VIDBUF24:
  case VIDBUF24S:
  case VIDBUF32:
  case VIDBUF32S:
    src.Type = MEMBUF;
    src.Xsize = object->Xsize;
    src.VXsize = object->VXsize;
    src.Ysize = 1;
    src.VYsize = 1;
    src.Xorigin = 0;
    src.Yorigin = 0;
    src.Bitmap = FUNC6(object->VXsize * object->PixelBytes);
    src.PixelBytes = object->PixelBytes;
    color = FUNC8(color);
    for (i = 0; i < object->VXsize; i++)
      FUNC7(&color, src.Bitmap + i * object->PixelBytes, object->PixelBytes);
    for (i = 0; i < object->VYsize; i++)
      FUNC4(&src, 0, 0, object, 0, i, object->VXsize, -1);
    break;

  case VIDBUF8X:
    mousemode = FUNC5(VGL_MOUSEHIDE);
    /* XXX works only for Xsize % 4 = 0 */
    FUNC11(0x3c6, 0xff);
    FUNC11(0x3c4, 0x02); FUNC11(0x3c5, 0x0f);
    FUNC9(object->Bitmap, (byte)color, VGLAdpInfo.va_line_width*object->VYsize);
    FUNC5(mousemode);
    break;

  case VIDBUF4:
  case VIDBUF4S:
    mousemode = FUNC5(VGL_MOUSEHIDE);
    /* XXX works only for Xsize % 8 = 0 */
    FUNC11(0x3c4, 0x02); FUNC11(0x3c5, 0x0f);
    FUNC11(0x3ce, 0x05); FUNC11(0x3cf, 0x02);		/* mode 2 */
    FUNC11(0x3ce, 0x01); FUNC11(0x3cf, 0x00);		/* set/reset enable */
    FUNC11(0x3ce, 0x08); FUNC11(0x3cf, 0xff);		/* bit mask */
    for (offset = 0; offset < VGLAdpInfo.va_line_width*object->VYsize; ) {
      FUNC3(offset);
      len = FUNC10(object->VXsize*object->VYsize - offset,
		VGLAdpInfo.va_window_size);
      FUNC9(object->Bitmap, (byte)color, len);
      offset += len;
    }
    FUNC11(0x3ce, 0x05); FUNC11(0x3cf, 0x00);
    FUNC5(mousemode);
    break;
  }
  if (object == VGLDisplay)
    FUNC2();
}