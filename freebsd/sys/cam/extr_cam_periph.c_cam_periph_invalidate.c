
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_periph {int flags; int (* periph_oninval ) (struct cam_periph*) ;int path; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_INFO ;
 int CAM_PERIPH_ANNOUNCED ;
 int CAM_PERIPH_INVALID ;
 int CAM_PERIPH_NEW_DEV_FOUND ;
 int MA_OWNED ;
 int SBUF_FIXEDLEN ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int rebooting ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int sbuf_putbuf (struct sbuf*) ;
 int stub1 (struct cam_periph*) ;
 int xpt_denounce_periph_sbuf (struct cam_periph*,struct sbuf*) ;

void
cam_periph_invalidate(struct cam_periph *periph)
{

 cam_periph_assert(periph, MA_OWNED);




 if ((periph->flags & CAM_PERIPH_INVALID) != 0)
  return;

 CAM_DEBUG(periph->path, CAM_DEBUG_INFO, ("Periph invalidated\n"));
 if ((periph->flags & CAM_PERIPH_ANNOUNCED) && !rebooting) {
  struct sbuf sb;
  char buffer[160];

  sbuf_new(&sb, buffer, 160, SBUF_FIXEDLEN);
  xpt_denounce_periph_sbuf(periph, &sb);
  sbuf_finish(&sb);
  sbuf_putbuf(&sb);
 }
 periph->flags |= CAM_PERIPH_INVALID;
 periph->flags &= ~CAM_PERIPH_NEW_DEV_FOUND;
 if (periph->periph_oninval != ((void*)0))
  periph->periph_oninval(periph);
 cam_periph_release_locked(periph);
}
