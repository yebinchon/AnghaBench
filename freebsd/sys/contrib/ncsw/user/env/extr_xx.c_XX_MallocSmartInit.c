
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_NO_MEMORY ;
 int E_OK ;
 int MALLOCSMART_POOL_SIZE ;
 int M_NETCOMMSW ;
 int M_NOWAIT ;
 int XX_MallocSmartLock ;
 scalar_t__ XX_MallocSmartPool ;
 scalar_t__ contigmalloc (int ,int ,int ,int ,int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
XX_MallocSmartInit(void)
{
 int error;

 error = E_OK;
 mtx_lock(&XX_MallocSmartLock);

 if (XX_MallocSmartPool)
  goto out;


 XX_MallocSmartPool = contigmalloc(MALLOCSMART_POOL_SIZE, M_NETCOMMSW,
     M_NOWAIT, 0, 0xFFFFFFFFFull, MALLOCSMART_POOL_SIZE, 0);
 if (!XX_MallocSmartPool) {
  error = E_NO_MEMORY;
  goto out;
 }

out:
 mtx_unlock(&XX_MallocSmartLock);
 return (error);
}
