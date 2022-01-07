
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {struct cam_periph* softc; } ;
struct cam_periph {int * softc; } ;
typedef int cam_status ;


 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int printf (char*) ;
 struct cam_periph* xpt_periph ;

__attribute__((used)) static cam_status
xptregister(struct cam_periph *periph, void *arg)
{
 struct cam_sim *xpt_sim;

 if (periph == ((void*)0)) {
  printf("xptregister: periph was NULL!!\n");
  return(CAM_REQ_CMP_ERR);
 }

 xpt_sim = (struct cam_sim *)arg;
 xpt_sim->softc = periph;
 xpt_periph = periph;
 periph->softc = ((void*)0);

 return(CAM_REQ_CMP);
}
