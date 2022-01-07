
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int ENCODING_UNICODE ;
 int ICONV_CSNMAXLEN ;
 int KICONV_VENDOR_MICSFT ;
 int build_iovec (struct iovec**,int*,char*,char*,size_t) ;
 int free (char*) ;
 int kiconv_add_xlat16_cspairs (char*,char*) ;
 int kiconv_quirkcs (char const*,int ) ;
 scalar_t__ kldload (char*) ;
 char* malloc (int ) ;
 scalar_t__ modfind (char*) ;
 int strncpy (char*,int ,int ) ;
 int warnx (char*) ;

__attribute__((used)) static int
set_charset(struct iovec **iov, int *iovlen, const char *localcs)
{
 int error;
 char *cs_disk;
 char *cs_local;

 cs_disk = ((void*)0);
 cs_local = ((void*)0);

 if (modfind("cd9660_iconv") < 0)
  if (kldload("cd9660_iconv") < 0 || modfind("cd9660_iconv") < 0) {
   warnx( "cannot find or load \"cd9660_iconv\" kernel module");
   return (-1);
  }

 if ((cs_disk = malloc(ICONV_CSNMAXLEN)) == ((void*)0))
  return (-1);
 if ((cs_local = malloc(ICONV_CSNMAXLEN)) == ((void*)0)) {
  free(cs_disk);
  return (-1);
 }
 strncpy(cs_disk, ENCODING_UNICODE, ICONV_CSNMAXLEN);
 strncpy(cs_local, kiconv_quirkcs(localcs, KICONV_VENDOR_MICSFT),
     ICONV_CSNMAXLEN);
 error = kiconv_add_xlat16_cspairs(cs_disk, cs_local);
 if (error)
  return (-1);

 build_iovec(iov, iovlen, "cs_disk", cs_disk, (size_t)-1);
 build_iovec(iov, iovlen, "cs_local", cs_local, (size_t)-1);

 return (0);
}
