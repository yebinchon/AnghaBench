#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int Xsize; int Ysize; int* Bitmap; } ;
typedef  TYPE_1__ VGLBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  MEMBUF ; 
 int /*<<< orphan*/  SW_VGA_MODEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,TYPE_1__*,int,int,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* VGLDisplay ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGL_DIR_DOWN ; 
 int /*<<< orphan*/  VGL_DIR_LEFT ; 
 int /*<<< orphan*/  VGL_DIR_RIGHT ; 
 int /*<<< orphan*/  VGL_DIR_UP ; 
 int /*<<< orphan*/  VGL_MOUSESHOW ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(int argc, char **argv)
{
  int y, xsize, ysize, i,j;
  VGLBitmap *tmp;

  // set graphics mode, here 320x240 256 colors
  // supported modes are (from <sys/consio.h>):
  // SW_VGA_CG320:      std VGA 320x200 256 colors
  // SW_VGA_MODEX:      Modex VGA 320x240 256 colors
  // SW_VGA_VG640:      std VGA 640x480 16 colors
  FUNC7(SW_VGA_MODEX);

  // initialize mouse and show pointer
  FUNC9(VGL_MOUSESHOW);

  // VGLDisplay is a ptr to a struct Bitmap defined and initialized by
  // libvgl. The Bitmap points directly to screen memory etc.
  xsize=VGLDisplay->Xsize;
  ysize=VGLDisplay->Ysize;

  // alloc a new bitmap
  tmp = FUNC2(MEMBUF, 256, 256, NULL);
  FUNC0(tmp);
  FUNC4(tmp, 0);

  // fill the screen with colored lines
  for (y=0; y<ysize; y++)
    FUNC8(VGLDisplay, 0, y, xsize-1, y, y/2 % 256);

  // draw some lines and circles just to show off
  FUNC8(VGLDisplay, 0, 0, xsize-1, ysize-1, 63);
  FUNC8(VGLDisplay, 0, ysize-1, xsize-1, 0, 63);
  FUNC8(VGLDisplay, 0, 0, 0, ysize-1, 63);
  FUNC8(VGLDisplay, xsize-1, 0, xsize-1, ysize-1, 63);
  FUNC5(VGLDisplay, 256, 0, 256, 256, 63);
  FUNC5(VGLDisplay, 0, 256, 256, 256, 0);

  // some text is also useful
  FUNC3(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_RIGHT);
  FUNC11(2);
  FUNC3(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_UP);
  FUNC11(2);
  FUNC3(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_LEFT);
  FUNC11(2);
  FUNC3(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_DOWN);
  FUNC11(2);

  // now show some simple bitblit
  for (i=0; i<256; i++)
    for (j=0; j<256; j++)
      tmp->Bitmap[i+256*j] = i%16;
  FUNC1(tmp, 0, 0, VGLDisplay, 0, 0, 128, 128);
  for (i=0; i<256; i++)
    for (j=0; j<256; j++)
      tmp->Bitmap[i+256*j] = j%16;
  FUNC1(tmp, 0, 0, VGLDisplay, 3, 128, 128, 128);
  FUNC11(2);
  FUNC1(VGLDisplay, 237, 311, tmp, 64, 64, 128, 128);
  FUNC1(tmp, 32, 32, VGLDisplay, 400, 128, 128, 128);
  FUNC11(2);
  FUNC1(VGLDisplay, 300, 300, VGLDisplay, 500, 128, 128, 128);
  FUNC11(5);
  i=0;

  // loop around drawing and copying
  while (++i) {
    FUNC1(VGLDisplay, FUNC10()%xsize, FUNC10()%ysize,
                  VGLDisplay, FUNC10()%xsize, FUNC10()%ysize,
                  FUNC10()%xsize, FUNC10()%ysize);
    FUNC8(VGLDisplay,  FUNC10()%xsize, FUNC10()%ysize, 
            FUNC10()%xsize, FUNC10()%ysize, FUNC10()%256);
    FUNC5(VGLDisplay, FUNC10()%xsize, FUNC10()%ysize,
               FUNC10()%xsize/2, FUNC10()%ysize/2, FUNC10()%256);
    FUNC10();
    if (i > 1000) break;
  }

  // restore screen to its original mode
  FUNC6();
  return 0;
}