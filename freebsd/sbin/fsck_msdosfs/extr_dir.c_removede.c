
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fatEntry {int dummy; } ;
struct bootblock {int dummy; } ;
typedef scalar_t__ cl_t ;


 scalar_t__ CLUST_FIRST ;
 int FSDIRMOD ;
 int FSERROR ;
 scalar_t__ FSFATAL ;
 int SLOT_DELETED ;
 scalar_t__ ask (int ,char*) ;
 int * buffer ;
 scalar_t__ delete (int,struct bootblock*,struct fatEntry*,scalar_t__,int,scalar_t__,int,int) ;
 int pwarn (char*,...) ;

__attribute__((used)) static int
removede(int f, struct bootblock *boot, struct fatEntry *fat, u_char *start,
    u_char *end, cl_t startcl, cl_t endcl, cl_t curcl, char *path, int type)
{
 switch (type) {
 case 0:
  pwarn("Invalid long filename entry for %s\n", path);
  break;
 case 1:
  pwarn("Invalid long filename entry at end of directory %s\n",
      path);
  break;
 case 2:
  pwarn("Invalid long filename entry for volume label\n");
  break;
 }
 if (ask(0, "Remove")) {
  if (startcl != curcl) {
   if (delete(f, boot, fat,
       startcl, start - buffer,
       endcl, end - buffer,
       endcl == curcl) == FSFATAL)
    return FSFATAL;
   start = buffer;
  }

  if ((endcl == curcl) || (startcl < CLUST_FIRST))
   for (; start < end; start += 32)
    *start = SLOT_DELETED;
  return FSDIRMOD;
 }
 return FSERROR;
}
