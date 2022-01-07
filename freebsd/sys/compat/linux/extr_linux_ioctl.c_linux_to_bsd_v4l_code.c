
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_code {int data; int datasize; int loadwhat; } ;
struct l_video_code {int data; int datasize; int loadwhat; } ;


 int LINUX_VIDEO_CODE_LOADWHAT_SIZE ;
 int PTRIN (int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
linux_to_bsd_v4l_code(struct l_video_code *lvc, struct video_code *vc)
{
 strlcpy(vc->loadwhat, lvc->loadwhat, LINUX_VIDEO_CODE_LOADWHAT_SIZE);
 vc->datasize = lvc->datasize;
 vc->data = PTRIN(lvc->data);
 return (0);
}
