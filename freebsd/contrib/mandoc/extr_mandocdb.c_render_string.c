
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ESCAPE_SPECIAL ;
 int abort () ;
 scalar_t__ mandoc_escape (char const**,char const**,int*) ;
 char* mandoc_malloc (size_t) ;
 char* mandoc_realloc (char*,size_t) ;
 int mchars_spec2cp (char const*,int) ;
 char* mchars_spec2str (char const*,int,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 int * strchr (char*,char const) ;
 size_t utf8 (int,char*) ;
 scalar_t__ write_utf8 ;

__attribute__((used)) static int
render_string(char **public, size_t *psz)
{
 const char *src, *scp, *addcp, *seq;
 char *dst;
 size_t ssz, dsz, addsz;
 char utfbuf[7], res[6];
 int seqlen, unicode;

 res[0] = '\\';
 res[1] = '\t';
 res[2] = 128;
 res[3] = 129;
 res[4] = 130;
 res[5] = '\0';

 src = scp = *public;
 ssz = *psz;
 dst = ((void*)0);
 dsz = 0;

 while (scp < src + *psz) {



  if (strchr(res, *scp) == ((void*)0)) {
   if (dst != ((void*)0))
    dst[dsz++] = *scp;
   scp++;
   continue;
  }






  if (dst == ((void*)0)) {
   dst = mandoc_malloc(ssz + 1);
   dsz = scp - src;
   memcpy(dst, src, dsz);
  }



  switch (*scp) {
  case '\\':
   break;
  case '\t':
  case 128:
   dst[dsz++] = ' ';
   scp++;
   continue;
  case 129:
   dst[dsz++] = '-';

  case 130:
   scp++;
   continue;
  default:
   abort();
  }







  scp++;
  if (mandoc_escape(&scp, &seq, &seqlen) != ESCAPE_SPECIAL)
   continue;






  if (write_utf8) {
   unicode = mchars_spec2cp(seq, seqlen);
   if (unicode <= 0)
    continue;
   addsz = utf8(unicode, utfbuf);
   if (addsz == 0)
    continue;
   addcp = utfbuf;
  } else {
   addcp = mchars_spec2str(seq, seqlen, &addsz);
   if (addcp == ((void*)0))
    continue;
   if (*addcp == 128) {
    addcp = " ";
    addsz = 1;
   }
  }



  ssz += addsz;
  dst = mandoc_realloc(dst, ssz + 1);
  memcpy(dst + dsz, addcp, addsz);
  dsz += addsz;
 }
 if (dst != ((void*)0)) {
  *public = dst;
  *psz = dsz;
 }



 while (*psz > 0 && (*public)[*psz - 1] == ' ')
  --*psz;
 if (dst != ((void*)0)) {
  (*public)[*psz] = '\0';
  return 1;
 } else
  return 0;
}
