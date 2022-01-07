
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_frame_cache {int frame_type; scalar_t__ sp; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;






 int I386_EAX_REGNUM ;
 int I386_FS_REGNUM ;
 int MAX_REGISTER_SIZE ;
 int current_gdbarch ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;
 struct kgdb_frame_cache* kgdb_trgt_frame_cache (struct frame_info*,void**) ;
 int* kgdb_trgt_frame_offset ;
 int lval_memory ;
 int memset (void*,int ,int) ;
 int not_lval ;
 int ofs_fix ;
 int register_size (int ,int) ;
 int target_read_memory (scalar_t__,void*,int) ;

__attribute__((used)) static void
kgdb_trgt_trapframe_prev_register(struct frame_info *next_frame,
    void **this_cache, int regnum, int *optimizedp, enum lval_type *lvalp,
    CORE_ADDR *addrp, int *realnump, void *valuep)
{
 char dummy_valuep[MAX_REGISTER_SIZE];
 struct kgdb_frame_cache *cache;
 int ofs, regsz;

 regsz = register_size(current_gdbarch, regnum);

 if (valuep == ((void*)0))
  valuep = dummy_valuep;
 memset(valuep, 0, regsz);
 *optimizedp = 0;
 *addrp = 0;
 *lvalp = not_lval;
 *realnump = -1;

 ofs = (regnum >= I386_EAX_REGNUM && regnum <= I386_FS_REGNUM)
     ? kgdb_trgt_frame_offset[regnum] + ofs_fix : -1;
 if (ofs == -1)
  return;

 cache = kgdb_trgt_frame_cache(next_frame, this_cache);
 switch (cache->frame_type) {
 case 129:
  break;
 case 131:
  ofs += 4;
  break;
 case 128:
  break;
 case 130:
  ofs -= ofs_fix;
  break;
 default:
  fprintf_unfiltered(gdb_stderr, "Correct FT_XXX frame offsets "
     "for %d\n", cache->frame_type);
  break;
 }
 *addrp = cache->sp + ofs;
 *lvalp = lval_memory;
 target_read_memory(*addrp, valuep, regsz);
}
