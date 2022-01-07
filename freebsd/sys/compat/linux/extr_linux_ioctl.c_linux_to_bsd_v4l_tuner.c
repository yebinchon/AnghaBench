
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_tuner {int signal; int mode; int flags; int rangehigh; int rangelow; int name; int tuner; } ;
struct l_video_tuner {int signal; int mode; int flags; int rangehigh; int rangelow; int name; int tuner; } ;


 int LINUX_VIDEO_TUNER_NAME_SIZE ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
linux_to_bsd_v4l_tuner(struct l_video_tuner *lvt, struct video_tuner *vt)
{
 vt->tuner = lvt->tuner;
 strlcpy(vt->name, lvt->name, LINUX_VIDEO_TUNER_NAME_SIZE);
 vt->rangelow = lvt->rangelow;
 vt->rangehigh = lvt->rangehigh;
 vt->flags = lvt->flags;
 vt->mode = lvt->mode;
 vt->signal = lvt->signal;
 return (0);
}
