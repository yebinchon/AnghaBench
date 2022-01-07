
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int bytesperline; int depth; int width; int height; int base; } ;
struct l_video_buffer {int bytesperline; int depth; int width; int height; int base; } ;


 int PTROUT (int ) ;

__attribute__((used)) static int
bsd_to_linux_v4l_buffer(struct video_buffer *vb, struct l_video_buffer *lvb)
{
 lvb->base = PTROUT(vb->base);
 lvb->height = vb->height;
 lvb->width = vb->width;
 lvb->depth = vb->depth;
 lvb->bytesperline = vb->bytesperline;
 return (0);
}
