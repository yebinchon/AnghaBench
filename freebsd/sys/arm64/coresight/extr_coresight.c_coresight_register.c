
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_device {int dev_type; int pdata; int node; int dev; } ;
struct coresight_desc {int dev_type; int pdata; int dev; } ;


 int M_CORESIGHT ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct coresight_device*,int ) ;
 int cs_devs ;
 int cs_mtx ;
 int link ;
 struct coresight_device* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ofw_bus_get_node (int ) ;

int
coresight_register(struct coresight_desc *desc)
{
 struct coresight_device *cs_dev;

 cs_dev = malloc(sizeof(struct coresight_device),
     M_CORESIGHT, M_WAITOK | M_ZERO);
 cs_dev->dev = desc->dev;
 cs_dev->node = ofw_bus_get_node(desc->dev);
 cs_dev->pdata = desc->pdata;
 cs_dev->dev_type = desc->dev_type;

 mtx_lock(&cs_mtx);
 TAILQ_INSERT_TAIL(&cs_devs, cs_dev, link);
 mtx_unlock(&cs_mtx);

 return (0);
}
