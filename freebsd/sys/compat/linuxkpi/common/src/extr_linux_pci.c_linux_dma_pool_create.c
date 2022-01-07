
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_priv {int dma_mask; } ;
struct dma_pool {size_t pool_entry_size; int pool_ptree; int pool_lock; int pool_zone; int pool_dmat; struct device* pool_device; } ;
struct device {int bsddev; struct linux_dma_priv* dma_priv; } ;


 int BUS_SPACE_MAXADDR ;
 int GFP_KERNEL ;
 int MTX_DEF ;
 scalar_t__ bus_dma_tag_create (int ,size_t,size_t,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int dma_pool_obj_ctor ;
 int dma_pool_obj_dtor ;
 int dma_pool_obj_import ;
 int dma_pool_obj_release ;
 int kfree (struct dma_pool*) ;
 struct dma_pool* kzalloc (int,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pctrie_init (int *) ;
 int uma_zcache_create (char*,int,int ,int ,int *,int *,int ,int ,struct dma_pool*,int ) ;

struct dma_pool *
linux_dma_pool_create(char *name, struct device *dev, size_t size,
    size_t align, size_t boundary)
{
 struct linux_dma_priv *priv;
 struct dma_pool *pool;

 priv = dev->dma_priv;

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 pool->pool_device = dev;
 pool->pool_entry_size = size;

 if (bus_dma_tag_create(bus_get_dma_tag(dev->bsddev),
     align, boundary,
     priv->dma_mask,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     size,
     1,
     size,
     0,
     ((void*)0), ((void*)0),
     &pool->pool_dmat)) {
  kfree(pool);
  return (((void*)0));
 }

 pool->pool_zone = uma_zcache_create(name, -1, dma_pool_obj_ctor,
     dma_pool_obj_dtor, ((void*)0), ((void*)0), dma_pool_obj_import,
     dma_pool_obj_release, pool, 0);

 mtx_init(&pool->pool_lock, "lkpi-dma-pool", ((void*)0), MTX_DEF);
 pctrie_init(&pool->pool_ptree);

 return (pool);
}
