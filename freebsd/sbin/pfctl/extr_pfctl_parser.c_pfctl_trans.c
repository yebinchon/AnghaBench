
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int trans ;
struct pfr_buffer {scalar_t__ pfrb_caddr; scalar_t__ pfrb_size; } ;
struct pfioc_trans_e {int dummy; } ;
struct pfioc_trans {int esize; struct pfioc_trans_e* array; scalar_t__ size; } ;


 int bzero (struct pfioc_trans*,int) ;
 int ioctl (int,int ,struct pfioc_trans*) ;

int
pfctl_trans(int dev, struct pfr_buffer *buf, u_long cmd, int from)
{
 struct pfioc_trans trans;

 bzero(&trans, sizeof(trans));
 trans.size = buf->pfrb_size - from;
 trans.esize = sizeof(struct pfioc_trans_e);
 trans.array = ((struct pfioc_trans_e *)buf->pfrb_caddr) + from;
 return ioctl(dev, cmd, &trans);
}
