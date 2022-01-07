
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_RW_CHECK_HEADER (void*) ;
 int FDT_TAGALIGN (int) ;
 scalar_t__ fdt_get_name (void*,int,int*) ;
 int fdt_splice_struct_ (void*,char*,int ,int ) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

int fdt_set_name(void *fdt, int nodeoffset, const char *name)
{
 char *namep;
 int oldlen, newlen;
 int err;

 FDT_RW_CHECK_HEADER(fdt);

 namep = (char *)(uintptr_t)fdt_get_name(fdt, nodeoffset, &oldlen);
 if (!namep)
  return oldlen;

 newlen = strlen(name);

 err = fdt_splice_struct_(fdt, namep, FDT_TAGALIGN(oldlen+1),
     FDT_TAGALIGN(newlen+1));
 if (err)
  return err;

 memcpy(namep, name, newlen+1);
 return 0;
}
