
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrtc {int callout; } ;
typedef scalar_t__ sbintime_t ;


 int KASSERT (int,char*) ;
 scalar_t__ callout_active (int *) ;

__attribute__((used)) static __inline void
vrtc_callout_check(struct vrtc *vrtc, sbintime_t freq)
{
 int active;

 active = callout_active(&vrtc->callout) ? 1 : 0;
 KASSERT((freq == 0 && !active) || (freq != 0 && active),
     ("vrtc callout %s with frequency %#lx",
     active ? "active" : "inactive", freq));
}
