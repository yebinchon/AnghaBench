
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct linux_dma_priv {int dmat; int ptree; } ;
struct linux_dma_obj {int dma_addr; int dmamap; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int BUS_DMA_NOWAIT ;
 int DMA_PRIV_LOCK (struct linux_dma_priv*) ;
 int DMA_PRIV_UNLOCK (struct linux_dma_priv*) ;
 int KASSERT (int,char*) ;
 int LINUX_DMA_PCTRIE_INSERT (int *,struct linux_dma_obj*) ;
 int M_NOWAIT ;
 scalar_t__ _bus_dmamap_load_phys (int ,int ,int ,size_t,int ,TYPE_1__*,int*) ;
 scalar_t__ bus_dma_id_mapped (int ,int ,size_t) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int linux_dma_obj_zone ;
 struct linux_dma_obj* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct linux_dma_obj*) ;

dma_addr_t
linux_dma_map_phys(struct device *dev, vm_paddr_t phys, size_t len)
{
 struct linux_dma_priv *priv;
 struct linux_dma_obj *obj;
 int error, nseg;
 bus_dma_segment_t seg;

 priv = dev->dma_priv;







 if (bus_dma_id_mapped(priv->dmat, phys, len))
  return (phys);

 obj = uma_zalloc(linux_dma_obj_zone, M_NOWAIT);
 if (obj == ((void*)0)) {
  return (0);
 }

 DMA_PRIV_LOCK(priv);
 if (bus_dmamap_create(priv->dmat, 0, &obj->dmamap) != 0) {
  DMA_PRIV_UNLOCK(priv);
  uma_zfree(linux_dma_obj_zone, obj);
  return (0);
 }

 nseg = -1;
 if (_bus_dmamap_load_phys(priv->dmat, obj->dmamap, phys, len,
     BUS_DMA_NOWAIT, &seg, &nseg) != 0) {
  bus_dmamap_destroy(priv->dmat, obj->dmamap);
  DMA_PRIV_UNLOCK(priv);
  uma_zfree(linux_dma_obj_zone, obj);
  return (0);
 }

 KASSERT(++nseg == 1, ("More than one segment (nseg=%d)", nseg));
 obj->dma_addr = seg.ds_addr;

 error = LINUX_DMA_PCTRIE_INSERT(&priv->ptree, obj);
 if (error != 0) {
  bus_dmamap_unload(priv->dmat, obj->dmamap);
  bus_dmamap_destroy(priv->dmat, obj->dmamap);
  DMA_PRIV_UNLOCK(priv);
  uma_zfree(linux_dma_obj_zone, obj);
  return (0);
 }
 DMA_PRIV_UNLOCK(priv);
 return (obj->dma_addr);
}
