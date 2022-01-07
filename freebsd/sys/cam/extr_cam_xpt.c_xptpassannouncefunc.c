
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int periph_name; } ;
struct cam_ed {int periphs; } ;


 struct cam_periph* SLIST_FIRST (int *) ;
 struct cam_periph* SLIST_NEXT (struct cam_periph*,int ) ;
 int periph_links ;
 scalar_t__ strncmp (int ,char*,int) ;
 int xpt_announce_periph (struct cam_periph*,int *) ;

__attribute__((used)) static int
xptpassannouncefunc(struct cam_ed *device, void *arg)
{
 struct cam_periph *periph;
 int i;

 for (periph = SLIST_FIRST(&device->periphs), i = 0; periph != ((void*)0);
      periph = SLIST_NEXT(periph, periph_links), i++);

 periph = SLIST_FIRST(&device->periphs);
 if ((i == 1)
  && (strncmp(periph->periph_name, "pass", 4) == 0))
  xpt_announce_periph(periph, ((void*)0));

 return(1);
}
