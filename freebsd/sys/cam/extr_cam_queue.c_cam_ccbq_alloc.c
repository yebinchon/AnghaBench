
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ccbq {int dummy; } ;


 int M_CAMCCBQ ;
 int M_NOWAIT ;
 scalar_t__ cam_ccbq_init (struct cam_ccbq*,int) ;
 int free (struct cam_ccbq*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;

struct cam_ccbq *
cam_ccbq_alloc(int openings)
{
 struct cam_ccbq *ccbq;

 ccbq = (struct cam_ccbq *)malloc(sizeof(*ccbq), M_CAMCCBQ, M_NOWAIT);
 if (ccbq == ((void*)0)) {
  printf("cam_ccbq_alloc: - cannot malloc!\n");
  return (((void*)0));
 }
 if (cam_ccbq_init(ccbq, openings) != 0) {
  free(ccbq, M_CAMCCBQ);
  return (((void*)0));
 }

 return (ccbq);
}
