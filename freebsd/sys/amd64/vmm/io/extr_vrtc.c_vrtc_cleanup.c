
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrtc {int callout; } ;


 int M_VRTC ;
 int callout_drain (int *) ;
 int free (struct vrtc*,int ) ;

void
vrtc_cleanup(struct vrtc *vrtc)
{

 callout_drain(&vrtc->callout);
 free(vrtc, M_VRTC);
}
