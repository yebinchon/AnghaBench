
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int pixel_format; int * pitches; scalar_t__* offsets; int bits_per_pixel; } ;
struct tegra_fb {int rotation; int flip_x; int flip_y; TYPE_1__ drm_fb; struct tegra_bo** planes; int block_height; scalar_t__ block_linear; } ;
struct tegra_bo {scalar_t__ pbase; } ;
struct dc_window {int transpose_xy; int flip_x; int flip_y; int is_yuv; int is_yuv_planar; int * stride; scalar_t__* base; int bits_per_pixel; void* swap; void* color_mode; int block_height; int surface_kind; } ;


 void* BYTE_SWAP (int ) ;







 int EINVAL ;
 int NOSWAP ;
 int SURFACE_KIND_BL_16B2 ;
 int SURFACE_KIND_PITCH ;
 int SWAP2 ;
 void* WIN_COLOR_DEPTH_B5G6R5 ;
 void* WIN_COLOR_DEPTH_B8G8R8A8 ;
 void* WIN_COLOR_DEPTH_R8G8B8A8 ;
 void* WIN_COLOR_DEPTH_YCbCr420P ;
 void* WIN_COLOR_DEPTH_YCbCr422 ;
 void* WIN_COLOR_DEPTH_YCbCr422P ;
 int drm_format_num_planes (int) ;

__attribute__((used)) static int
dc_parse_drm_format(struct tegra_fb *fb, struct dc_window *win)
{
 struct tegra_bo *bo;
 uint32_t cm;
 uint32_t sw;
 bool is_yuv, is_yuv_planar;
 int nplanes, i;

 switch (fb->drm_fb.pixel_format) {
 case 132:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_R8G8B8A8;
  is_yuv = 0;
  is_yuv_planar = 0;
  break;

 case 131:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_B8G8R8A8;
  is_yuv = 0;
  is_yuv_planar = 0;
  break;

 case 134:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_B5G6R5;
  is_yuv = 0;
  is_yuv_planar = 0;
  break;

 case 133:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_YCbCr422;
  is_yuv = 1;
  is_yuv_planar = 0;
  break;

 case 128:
  sw = BYTE_SWAP(SWAP2);
  cm = WIN_COLOR_DEPTH_YCbCr422;
  is_yuv = 1;
  is_yuv_planar = 0;
  break;

 case 130:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_YCbCr420P;
  is_yuv = 1;
  is_yuv_planar = 1;
  break;

 case 129:
  sw = BYTE_SWAP(NOSWAP);
  cm = WIN_COLOR_DEPTH_YCbCr422P;
  is_yuv = 1;
  is_yuv_planar = 1;
  break;

 default:

  return (-EINVAL);
 }


 switch (fb->rotation) {
 case 0:
 case 180:
  break;

 case 90:
 case 270:
  if (!fb->block_linear)
   return (-EINVAL);
  break;

 default:
  return (-EINVAL);
 }


 if (win == ((void*)0))
  return (0);

 win->surface_kind =
     fb->block_linear ? SURFACE_KIND_BL_16B2: SURFACE_KIND_PITCH;
 win->block_height = fb->block_height;
 switch (fb->rotation) {
 case 0:
  win->transpose_xy = 0;
  win->flip_x = 0;
  win->flip_y = 0;
  break;

 case 90:
  win->transpose_xy = 1;
  win->flip_x = 0;
  win->flip_y = 1;
  break;

 case 180:
  win->transpose_xy = 0;
  win->flip_x = 1;
  win->flip_y = 1;
  break;

 case 270:
  win->transpose_xy = 1;
  win->flip_x = 1;
  win->flip_y = 0;
  break;
 }
 win->flip_x ^= fb->flip_x;
 win->flip_y ^= fb->flip_y;

 win->color_mode = cm;
 win->swap = sw;
 win->bits_per_pixel = fb->drm_fb.bits_per_pixel;
 win->is_yuv = is_yuv;
 win->is_yuv_planar = is_yuv_planar;

 nplanes = drm_format_num_planes(fb->drm_fb.pixel_format);
 for (i = 0; i < nplanes; i++) {
  bo = fb->planes[i];
  win->base[i] = bo->pbase + fb->drm_fb.offsets[i];
  win->stride[i] = fb->drm_fb.pitches[i];
 }
 return (0);
}
