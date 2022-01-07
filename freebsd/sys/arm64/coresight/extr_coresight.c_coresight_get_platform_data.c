
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_platform_data {int in_ports; int out_ports; int endpoints; int mtx_lock; } ;
typedef int phandle_t ;
typedef int device_t ;


 int MTX_DEF ;
 int M_CORESIGHT ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 scalar_t__ bootverbose ;
 int coresight_get_cpu (int ,struct coresight_platform_data*) ;
 int coresight_get_ports (int ,struct coresight_platform_data*) ;
 struct coresight_platform_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int printf (char*,int,int) ;

struct coresight_platform_data *
coresight_get_platform_data(device_t dev)
{
 struct coresight_platform_data *pdata;
 phandle_t node;

 node = ofw_bus_get_node(dev);

 pdata = malloc(sizeof(struct coresight_platform_data),
     M_CORESIGHT, M_WAITOK | M_ZERO);
 mtx_init(&pdata->mtx_lock, "Coresight Platform Data", ((void*)0), MTX_DEF);
 TAILQ_INIT(&pdata->endpoints);

 coresight_get_cpu(node, pdata);
 coresight_get_ports(node, pdata);

 if (bootverbose)
  printf("Total ports: in %d out %d\n",
      pdata->in_ports, pdata->out_ports);

 return (pdata);
}
