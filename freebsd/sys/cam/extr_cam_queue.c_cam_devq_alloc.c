
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_devq {int dummy; } ;


 int M_CAMDEVQ ;
 int M_NOWAIT ;
 scalar_t__ cam_devq_init (struct cam_devq*,int,int) ;
 int free (struct cam_devq*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;

struct cam_devq *
cam_devq_alloc(int devices, int openings)
{
 struct cam_devq *devq;

 devq = (struct cam_devq *)malloc(sizeof(*devq), M_CAMDEVQ, M_NOWAIT);
 if (devq == ((void*)0)) {
  printf("cam_devq_alloc: - cannot malloc!\n");
  return (((void*)0));
 }
 if (cam_devq_init(devq, devices, openings) != 0) {
  free(devq, M_CAMDEVQ);
  return (((void*)0));
 }
 return (devq);
}
