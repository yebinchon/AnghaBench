
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
bsd_to_linux_v4l2_format(struct v4l2_format *vf, struct l_v4l2_format *lvf)
{
 lvf->type = vf->type;
 if (vf->type == V4L2_BUF_TYPE_VIDEO_OVERLAY



     )




  return (EINVAL);
 memcpy(&lvf->fmt, &vf->fmt, sizeof(vf->fmt));
 return (0);
}
