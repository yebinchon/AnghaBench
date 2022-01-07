
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {int dummy; } ;



__attribute__((used)) static int
fb_dirty(struct drm_framebuffer *fb, struct drm_file *file_priv,
unsigned flags, unsigned color, struct drm_clip_rect *clips, unsigned num_clips)
{

 return (0);
}
