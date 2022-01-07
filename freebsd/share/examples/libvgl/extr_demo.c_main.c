
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int Xsize; int Ysize; int* Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 int MEMBUF ;
 int SW_VGA_MODEX ;
 int VGLBitmapAllocateBits (TYPE_1__*) ;
 int VGLBitmapCopy (TYPE_1__*,int,int,TYPE_1__*,int,int,int,int) ;
 TYPE_1__* VGLBitmapCreate (int ,int,int,int *) ;
 int VGLBitmapString (TYPE_1__*,int,int,char*,int,int ,int ,int ) ;
 int VGLClear (TYPE_1__*,int ) ;
 TYPE_1__* VGLDisplay ;
 int VGLEllipse (TYPE_1__*,int,int,int,int,int) ;
 int VGLEnd () ;
 int VGLInit (int ) ;
 int VGLLine (TYPE_1__*,int,int,int,int,int) ;
 int VGLMouseInit (int ) ;
 int VGL_DIR_DOWN ;
 int VGL_DIR_LEFT ;
 int VGL_DIR_RIGHT ;
 int VGL_DIR_UP ;
 int VGL_MOUSESHOW ;
 int rand () ;
 int sleep (int) ;

int
main(int argc, char **argv)
{
  int y, xsize, ysize, i,j;
  VGLBitmap *tmp;






  VGLInit(SW_VGA_MODEX);


  VGLMouseInit(VGL_MOUSESHOW);



  xsize=VGLDisplay->Xsize;
  ysize=VGLDisplay->Ysize;


  tmp = VGLBitmapCreate(MEMBUF, 256, 256, ((void*)0));
  VGLBitmapAllocateBits(tmp);
  VGLClear(tmp, 0);


  for (y=0; y<ysize; y++)
    VGLLine(VGLDisplay, 0, y, xsize-1, y, y/2 % 256);


  VGLLine(VGLDisplay, 0, 0, xsize-1, ysize-1, 63);
  VGLLine(VGLDisplay, 0, ysize-1, xsize-1, 0, 63);
  VGLLine(VGLDisplay, 0, 0, 0, ysize-1, 63);
  VGLLine(VGLDisplay, xsize-1, 0, xsize-1, ysize-1, 63);
  VGLEllipse(VGLDisplay, 256, 0, 256, 256, 63);
  VGLEllipse(VGLDisplay, 0, 256, 256, 256, 0);


  VGLBitmapString(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_RIGHT);
  sleep(2);
  VGLBitmapString(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_UP);
  sleep(2);
  VGLBitmapString(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_LEFT);
  sleep(2);
  VGLBitmapString(VGLDisplay, 100,100,
    "This is text", 63, 0, 0, VGL_DIR_DOWN);
  sleep(2);


  for (i=0; i<256; i++)
    for (j=0; j<256; j++)
      tmp->Bitmap[i+256*j] = i%16;
  VGLBitmapCopy(tmp, 0, 0, VGLDisplay, 0, 0, 128, 128);
  for (i=0; i<256; i++)
    for (j=0; j<256; j++)
      tmp->Bitmap[i+256*j] = j%16;
  VGLBitmapCopy(tmp, 0, 0, VGLDisplay, 3, 128, 128, 128);
  sleep(2);
  VGLBitmapCopy(VGLDisplay, 237, 311, tmp, 64, 64, 128, 128);
  VGLBitmapCopy(tmp, 32, 32, VGLDisplay, 400, 128, 128, 128);
  sleep(2);
  VGLBitmapCopy(VGLDisplay, 300, 300, VGLDisplay, 500, 128, 128, 128);
  sleep(5);
  i=0;


  while (++i) {
    VGLBitmapCopy(VGLDisplay, rand()%xsize, rand()%ysize,
                  VGLDisplay, rand()%xsize, rand()%ysize,
                  rand()%xsize, rand()%ysize);
    VGLLine(VGLDisplay, rand()%xsize, rand()%ysize,
            rand()%xsize, rand()%ysize, rand()%256);
    VGLEllipse(VGLDisplay, rand()%xsize, rand()%ysize,
               rand()%xsize/2, rand()%ysize/2, rand()%256);
    rand();
    if (i > 1000) break;
  }


  VGLEnd();
  return 0;
}
