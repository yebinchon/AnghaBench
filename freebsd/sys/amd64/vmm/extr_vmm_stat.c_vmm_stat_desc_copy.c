
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmm_stat_type {int index; int nelems; char* desc; } ;


 int EINVAL ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int vst_num_types ;
 struct vmm_stat_type** vsttab ;

int
vmm_stat_desc_copy(int index, char *buf, int bufsize)
{
 int i;
 struct vmm_stat_type *vst;

 for (i = 0; i < vst_num_types; i++) {
  vst = vsttab[i];
  if (index >= vst->index && index < vst->index + vst->nelems) {
   if (vst->nelems > 1) {
    snprintf(buf, bufsize, "%s[%d]",
      vst->desc, index - vst->index);
   } else {
    strlcpy(buf, vst->desc, bufsize);
   }
   return (0);
  }
 }

 return (EINVAL);
}
