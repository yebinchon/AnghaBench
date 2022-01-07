
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long userptr; int offset; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct v4l2_buffer {scalar_t__ memory; int reserved; int input; int length; TYPE_3__ m; int sequence; int timecode; TYPE_1__ timestamp; int field; int flags; int bytesused; int type; int index; } ;
struct TYPE_8__ {int offset; int userptr; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct l_v4l2_buffer {scalar_t__ memory; int reserved; int input; int length; TYPE_4__ m; int sequence; int timecode; TYPE_2__ timestamp; int field; int flags; int bytesused; int type; int index; } ;


 scalar_t__ PTRIN (int ) ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
linux_to_bsd_v4l2_buffer(struct l_v4l2_buffer *lvb, struct v4l2_buffer *vb)
{
 vb->index = lvb->index;
 vb->type = lvb->type;
 vb->bytesused = lvb->bytesused;
 vb->flags = lvb->flags;
 vb->field = lvb->field;
 vb->timestamp.tv_sec = lvb->timestamp.tv_sec;
 vb->timestamp.tv_usec = lvb->timestamp.tv_usec;
 memcpy(&vb->timecode, &lvb->timecode, sizeof (lvb->timecode));
 vb->sequence = lvb->sequence;
 vb->memory = lvb->memory;
 if (lvb->memory == V4L2_MEMORY_USERPTR)

  vb->m.userptr = (unsigned long)PTRIN(lvb->m.userptr);
 else
  vb->m.offset = lvb->m.offset;
 vb->length = lvb->length;
 vb->input = lvb->input;
 vb->reserved = lvb->reserved;
 return (0);
}
