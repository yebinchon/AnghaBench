
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_block_cache {int dummy; } ;
struct pt_bcache_entry {int ninsn; int mode; int qualifier; scalar_t__ displacement; } ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;
typedef int bce ;


 int memset (struct pt_bcache_entry*,int ,int) ;
 int pt_bcache_add (struct pt_block_cache*,scalar_t__,struct pt_bcache_entry) ;
 int ptbq_again ;
 int ptbq_decode ;

__attribute__((used)) static inline int pt_blk_add_trampoline(struct pt_block_cache *bcache,
     uint64_t ip, uint64_t nip,
     enum pt_exec_mode mode)
{
 struct pt_bcache_entry bce;
 int64_t disp;


 disp = (int64_t) (nip - ip);

 memset(&bce, 0, sizeof(bce));
 bce.displacement = (int32_t) disp;
 bce.ninsn = 1;
 bce.mode = mode;
 bce.qualifier = ptbq_again;




 if ((int64_t) bce.displacement != disp) {

  memset(&bce, 0, sizeof(bce));
  bce.ninsn = 1;
  bce.mode = mode;
  bce.qualifier = ptbq_decode;
 }

 return pt_bcache_add(bcache, ip, bce);
}
