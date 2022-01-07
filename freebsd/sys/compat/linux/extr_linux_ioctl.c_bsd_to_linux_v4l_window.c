
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_window {int clipcount; int clips; int flags; int chromakey; int height; int width; int y; int x; } ;
struct l_video_window {int clipcount; int clips; int flags; int chromakey; int height; int width; int y; int x; } ;


 int PTROUT (int ) ;
 int memset (struct l_video_window*,int ,int) ;

__attribute__((used)) static int
bsd_to_linux_v4l_window(struct video_window *vw, struct l_video_window *lvw)
{
 memset(lvw, 0, sizeof(*lvw));

 lvw->x = vw->x;
 lvw->y = vw->y;
 lvw->width = vw->width;
 lvw->height = vw->height;
 lvw->chromakey = vw->chromakey;
 lvw->flags = vw->flags;
 lvw->clips = PTROUT(vw->clips);
 lvw->clipcount = vw->clipcount;
 return (0);
}
