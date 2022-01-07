
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_tuner {int signal; int mode; int flags; int rangehigh; int rangelow; int name; int tuner; } ;
struct l_video_tuner {int signal; int mode; int flags; int rangehigh; int rangelow; int name; int tuner; } ;


 int LINUX_VIDEO_TUNER_NAME_SIZE ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
bsd_to_linux_v4l_tuner(struct video_tuner *vt, struct l_video_tuner *lvt)
{
 lvt->tuner = vt->tuner;
 strlcpy(lvt->name, vt->name, LINUX_VIDEO_TUNER_NAME_SIZE);
 lvt->rangelow = vt->rangelow;
 lvt->rangehigh = vt->rangehigh;
 lvt->flags = vt->flags;
 lvt->mode = vt->mode;
 lvt->signal = vt->signal;
 return (0);
}
