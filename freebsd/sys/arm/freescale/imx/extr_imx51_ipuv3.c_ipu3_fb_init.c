
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct video_adapter_softc {int width; int height; int stride; int fb_size; intptr_t fb_addr; intptr_t fb_paddr; int bpp; int depth; } ;
struct ipu3sc_softc {int pbase; scalar_t__ vbase; } ;


 int CPMEM_OFFSET (int ,int,int,int) ;
 int IMX_IPU_DP1 ;
 int IPUV3_READ (struct ipu3sc_softc*,int ,int ) ;
 int IPUV3_WRITE (struct ipu3sc_softc*,int ,int ,int) ;
 int cpmem ;
 int ipu3_fb_malloc (struct ipu3sc_softc*,int) ;
 int printf (char*,int,int,int) ;
 struct video_adapter_softc va_softc ;

__attribute__((used)) static void
ipu3_fb_init(void *arg)
{
 struct ipu3sc_softc *sc = arg;
 struct video_adapter_softc *va_sc = &va_softc;
 uint64_t w0sh96;
 uint32_t w1sh96;



 w0sh96 = IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 0, 16));
 w0sh96 <<= 32;
 w0sh96 |= IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 0, 12));

 va_sc->width = ((w0sh96 >> 29) & 0x1fff) + 1;
 va_sc->height = ((w0sh96 >> 42) & 0x0fff) + 1;


 w1sh96 = IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 12));
 va_sc->stride = ((w1sh96 >> 6) & 0x3fff) + 1;

 printf("%dx%d [%d]\n", va_sc->width, va_sc->height, va_sc->stride);
 va_sc->fb_size = va_sc->height * va_sc->stride;

 ipu3_fb_malloc(sc, va_sc->fb_size);


 IPUV3_WRITE(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 0),
     ((sc->pbase >> 3) | ((sc->pbase >> 3) << 29)) & 0xffffffff);

 IPUV3_WRITE(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 4),
     ((sc->pbase >> 3) >> 3) & 0xffffffff);

 va_sc->fb_addr = (intptr_t)sc->vbase;
 va_sc->fb_paddr = (intptr_t)sc->pbase;
 va_sc->bpp = va_sc->stride / va_sc->width;
 va_sc->depth = va_sc->bpp * 8;
}
