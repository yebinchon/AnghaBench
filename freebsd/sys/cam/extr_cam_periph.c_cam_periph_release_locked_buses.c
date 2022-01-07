
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int refcount; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int camperiphfree (struct cam_periph*) ;

void
cam_periph_release_locked_buses(struct cam_periph *periph)
{

 cam_periph_assert(periph, MA_OWNED);
 KASSERT(periph->refcount >= 1, ("periph->refcount >= 1"));
 if (--periph->refcount == 0)
  camperiphfree(periph);
}
