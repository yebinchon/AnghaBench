
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {scalar_t__ type; int fmt; } ;
struct l_v4l2_format {scalar_t__ type; int fmt; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
linux_to_bsd_v4l2_format(struct l_v4l2_format *lvf, struct v4l2_format *vf)
{
 vf->type = lvf->type;
 if (lvf->type == V4L2_BUF_TYPE_VIDEO_OVERLAY



     )




  return (EINVAL);
 memcpy(&vf->fmt, &lvf->fmt, sizeof(vf->fmt));
 return (0);
}
