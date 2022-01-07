
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_window {int clipcount; int clips; int flags; int chromakey; int height; int width; int y; int x; } ;
struct l_video_window {int clipcount; int clips; int flags; int chromakey; int height; int width; int y; int x; } ;


 int PTRIN (int ) ;

__attribute__((used)) static int
linux_to_bsd_v4l_window(struct l_video_window *lvw, struct video_window *vw)
{
 vw->x = lvw->x;
 vw->y = lvw->y;
 vw->width = lvw->width;
 vw->height = lvw->height;
 vw->chromakey = lvw->chromakey;
 vw->flags = lvw->flags;
 vw->clips = PTRIN(lvw->clips);
 vw->clipcount = lvw->clipcount;
 return (0);
}
