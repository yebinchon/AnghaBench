
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct cma_device {int verbs; } ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int ERR (int ) ;
 int ibv_query_pkey (int ,int ,int,scalar_t__*) ;

__attribute__((used)) static int ucma_find_pkey(struct cma_device *cma_dev, uint8_t port_num,
     __be16 pkey, uint16_t *pkey_index)
{
 int ret, i;
 __be16 chk_pkey;

 for (i = 0, ret = 0; !ret; i++) {
  ret = ibv_query_pkey(cma_dev->verbs, port_num, i, &chk_pkey);
  if (!ret && pkey == chk_pkey) {
   *pkey_index = (uint16_t) i;
   return 0;
  }
 }
 return ERR(EINVAL);
}
