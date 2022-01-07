
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_node_header {char* name; } ;


 int FDT_ERR_BADSTRUCTURE ;
 int fdt_check_header (void const*) ;
 int fdt_check_node_offset_ (void const*,int) ;
 struct fdt_node_header* fdt_offset_ptr_ (void const*,int) ;
 int fdt_version (void const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

const char *fdt_get_name(const void *fdt, int nodeoffset, int *len)
{
 const struct fdt_node_header *nh = fdt_offset_ptr_(fdt, nodeoffset);
 const char *nameptr;
 int err;

 if (((err = fdt_check_header(fdt)) != 0)
     || ((err = fdt_check_node_offset_(fdt, nodeoffset)) < 0))
   goto fail;

 nameptr = nh->name;

 if (fdt_version(fdt) < 0x10) {





  const char *leaf;
  leaf = strrchr(nameptr, '/');
  if (leaf == ((void*)0)) {
   err = -FDT_ERR_BADSTRUCTURE;
   goto fail;
  }
  nameptr = leaf+1;
 }

 if (len)
  *len = strlen(nameptr);

 return nameptr;

 fail:
 if (len)
  *len = err;
 return ((void*)0);
}
