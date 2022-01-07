
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ccbq {int dummy; } ;


 int M_CAMCCBQ ;
 int cam_ccbq_fini (struct cam_ccbq*) ;
 int free (struct cam_ccbq*,int ) ;

void
cam_ccbq_free(struct cam_ccbq *ccbq)
{
 if (ccbq) {
  cam_ccbq_fini(ccbq);
  free(ccbq, M_CAMCCBQ);
 }
}
