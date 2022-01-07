
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct preloaded_file {struct file_metadata* f_metadata; int f_size; int f_addr; scalar_t__ f_args; int f_type; int f_name; struct preloaded_file* f_next; } ;
struct file_metadata {int md_type; struct file_metadata* md_next; } ;


 int MODINFOMD_NOCOPY ;
 int MOD_ADDR (scalar_t__,int ,int) ;
 int MOD_ARGS (scalar_t__,scalar_t__,int) ;
 int MOD_END (scalar_t__,int) ;
 int MOD_METADATA (scalar_t__,struct file_metadata*,int) ;
 int MOD_NAME (scalar_t__,int ,int) ;
 int MOD_SIZE (scalar_t__,int ,int) ;
 int MOD_TYPE (scalar_t__,int ,int) ;
 scalar_t__ __elfN (int ) ;
 struct preloaded_file* file_findfile (int *,int *) ;
 int relocation_offset ;

__attribute__((used)) static vm_offset_t
bi_copymodules(vm_offset_t addr)
{
 struct preloaded_file *fp;
 struct file_metadata *md;
 int c;
 uint64_t v;

 c = addr != 0;

 for (fp = file_findfile(((void*)0), ((void*)0)); fp != ((void*)0); fp = fp->f_next) {
  MOD_NAME(addr, fp->f_name, c);
  MOD_TYPE(addr, fp->f_type, c);
  if (fp->f_args)
   MOD_ARGS(addr, fp->f_args, c);
  v = fp->f_addr;



  MOD_ADDR(addr, v, c);
  v = fp->f_size;
  MOD_SIZE(addr, v, c);
  for (md = fp->f_metadata; md != ((void*)0); md = md->md_next)
   if (!(md->md_type & MODINFOMD_NOCOPY))
    MOD_METADATA(addr, md, c);
 }
 MOD_END(addr, c);
 return(addr);
}
