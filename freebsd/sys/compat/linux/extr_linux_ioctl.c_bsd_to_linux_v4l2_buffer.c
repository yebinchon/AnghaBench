
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int userptr; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct v4l2_buffer {scalar_t__ memory; int reserved; int input; int length; TYPE_4__ m; int sequence; int timecode; TYPE_2__ timestamp; int field; int flags; int bytesused; int type; int index; } ;
struct TYPE_7__ {int offset; int userptr; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct l_v4l2_buffer {scalar_t__ memory; int reserved; int input; int length; TYPE_3__ m; int sequence; int timecode; TYPE_1__ timestamp; int field; int flags; int bytesused; int type; int index; } ;


 int PTROUT (int ) ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
bsd_to_linux_v4l2_buffer(struct v4l2_buffer *vb, struct l_v4l2_buffer *lvb)
{
 lvb->index = vb->index;
 lvb->type = vb->type;
 lvb->bytesused = vb->bytesused;
 lvb->flags = vb->flags;
 lvb->field = vb->field;
 lvb->timestamp.tv_sec = vb->timestamp.tv_sec;
 lvb->timestamp.tv_usec = vb->timestamp.tv_usec;
 memcpy(&lvb->timecode, &vb->timecode, sizeof (vb->timecode));
 lvb->sequence = vb->sequence;
 lvb->memory = vb->memory;
 if (vb->memory == V4L2_MEMORY_USERPTR)

  lvb->m.userptr = PTROUT(vb->m.userptr);
 else
  lvb->m.offset = vb->m.offset;
 lvb->length = vb->length;
 lvb->input = vb->input;
 lvb->reserved = vb->reserved;
 return (0);
}
