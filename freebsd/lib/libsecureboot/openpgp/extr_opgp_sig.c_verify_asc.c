
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pbuf ;


 int MAXPATHLEN ;
 int free (unsigned char*) ;
 scalar_t__ openpgp_verify (char*,unsigned char*,size_t,unsigned char*,size_t,int) ;
 unsigned char* read_file (char const*,size_t*) ;
 size_t strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

unsigned char *
verify_asc(const char *sigfile, int flags)
{
 char pbuf[MAXPATHLEN];
 char *cp;
 size_t n;
 unsigned char *fdata, *sdata;
 size_t fbytes, sbytes;

 if ((sdata = read_file(sigfile, &sbytes))) {
  n = strlcpy(pbuf, sigfile, sizeof(pbuf));
  if ((cp = strrchr(pbuf, '.')))
   *cp = '\0';
  if ((fdata = read_file(pbuf, &fbytes))) {
   if (openpgp_verify(pbuf, fdata, fbytes, sdata,
    sbytes, flags)) {
    free(fdata);
    fdata = ((void*)0);
   }
  }
 } else
  fdata = ((void*)0);
 free(sdata);
 return (fdata);
}
