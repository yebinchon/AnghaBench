
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 char* fdt_get_name (void const*,int,int*) ;
 int fdt_parent_offset (void const*,int) ;

__attribute__((used)) static int get_path_len(const void *fdt, int nodeoffset)
{
 int len = 0, namelen;
 const char *name;

 FDT_CHECK_HEADER(fdt);

 for (;;) {
  name = fdt_get_name(fdt, nodeoffset, &namelen);
  if (!name)
   return namelen;


  if (namelen == 0)
   break;

  nodeoffset = fdt_parent_offset(fdt, nodeoffset);
  if (nodeoffset < 0)
   return nodeoffset;
  len += namelen + 1;
 }


 if (len == 0)
  len++;
 return len;
}
