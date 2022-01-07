
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int memset (struct drm_crtc*,int ,int) ;

__attribute__((used)) static void
dc_destroy(struct drm_crtc *crtc)
{

 drm_crtc_cleanup(crtc);
 memset(crtc, 0, sizeof(*crtc));
}
