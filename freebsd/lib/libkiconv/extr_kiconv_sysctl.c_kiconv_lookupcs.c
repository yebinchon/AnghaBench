
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_cspair_info {int cs_from; int cs_to; } ;


 int ENOENT ;
 int ENOMEM ;
 int errno ;
 int free (struct iconv_cspair_info*) ;
 struct iconv_cspair_info* malloc (size_t) ;
 scalar_t__ strcmp (int ,char const*) ;
 int sysctlbyname (char*,struct iconv_cspair_info*,size_t*,int *,int ) ;

int
kiconv_lookupcs(const char *tocode, const char *fromcode)
{
 size_t i, size;
 struct iconv_cspair_info *csi, *csip;

 if (sysctlbyname("kern.iconv.cslist", ((void*)0), &size, ((void*)0), 0) == -1)
  return (errno);
 if (size > 0) {
  csi = malloc(size);
  if (csi == ((void*)0))
   return (ENOMEM);
  if (sysctlbyname("kern.iconv.cslist", csi, &size, ((void*)0), 0) == -1) {
   free(csi);
   return (errno);
  }
  for (i = 0, csip = csi; i < (size/sizeof(*csi)); i++, csip++){
   if (strcmp(csip->cs_to, tocode) == 0 &&
       strcmp(csip->cs_from, fromcode) == 0) {
    free(csi);
    return (0);
   }
  }
 }
 return (ENOENT);
}
