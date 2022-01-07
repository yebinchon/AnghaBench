
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int bytesperline; int depth; int width; int height; int base; } ;
struct l_video_buffer {int bytesperline; int depth; int width; int height; int base; } ;


 int PTRIN (int ) ;

__attribute__((used)) static int
linux_to_bsd_v4l_buffer(struct l_video_buffer *lvb, struct video_buffer *vb)
{
 vb->base = PTRIN(lvb->base);
 vb->height = lvb->height;
 vb->width = lvb->width;
 vb->depth = lvb->depth;
 vb->bytesperline = lvb->bytesperline;
 return (0);
}
