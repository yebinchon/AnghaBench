
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_xrcd_init_attr {int comp_mask; int fd; int oflags; } ;
struct ibv_xrcd {int dummy; } ;
struct cma_device {struct ibv_xrcd* xrcd; int verbs; } ;


 int IBV_XRCD_INIT_ATTR_FD ;
 int IBV_XRCD_INIT_ATTR_OFLAGS ;
 int O_CREAT ;
 struct ibv_xrcd* ibv_open_xrcd (int ,struct ibv_xrcd_init_attr*) ;
 int memset (struct ibv_xrcd_init_attr*,int ,int) ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static struct ibv_xrcd *ucma_get_xrcd(struct cma_device *cma_dev)
{
 struct ibv_xrcd_init_attr attr;

 pthread_mutex_lock(&mut);
 if (!cma_dev->xrcd) {
  memset(&attr, 0, sizeof attr);
  attr.comp_mask = IBV_XRCD_INIT_ATTR_FD | IBV_XRCD_INIT_ATTR_OFLAGS;
  attr.fd = -1;
  attr.oflags = O_CREAT;
  cma_dev->xrcd = ibv_open_xrcd(cma_dev->verbs, &attr);
 }
 pthread_mutex_unlock(&mut);
 return cma_dev->xrcd;
}
