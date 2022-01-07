
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int header ;


 long GB ;
 long KB ;
 long MAXB ;
 long MB ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,long,char const*) ;
 int strlen (char*) ;
 long strtol (char*,char**,int) ;
 int warnx (char*,...) ;

char *
getbsize(int *headerlenp, long *blocksizep)
{
 static char header[20];
 long n, max, mul, blocksize;
 char *ep, *p;
 const char *form;





 form = "";
 if ((p = getenv("BLOCKSIZE")) != ((void*)0) && *p != '\0') {
  if ((n = strtol(p, &ep, 10)) < 0)
   goto underflow;
  if (n == 0)
   n = 1;
  if (*ep && ep[1])
   goto fmterr;
  switch (*ep) {
  case 'G': case 'g':
   form = "G";
   max = (1024L * 1024L * 1024L) / (1024L * 1024L * 1024L);
   mul = (1024L * 1024L * 1024L);
   break;
  case 'K': case 'k':
   form = "K";
   max = (1024L * 1024L * 1024L) / (1024L);
   mul = (1024L);
   break;
  case 'M': case 'm':
   form = "M";
   max = (1024L * 1024L * 1024L) / (1024L * 1024L);
   mul = (1024L * 1024L);
   break;
  case '\0':
   max = (1024L * 1024L * 1024L);
   mul = 1;
   break;
  default:
fmterr: warnx("%s: unknown blocksize", p);
   n = 512;
   max = (1024L * 1024L * 1024L);
   mul = 1;
   break;
  }
  if (n > max) {
   warnx("maximum blocksize is %ldG", (1024L * 1024L * 1024L) / (1024L * 1024L * 1024L));
   n = max;
  }
  if ((blocksize = n * mul) < 512) {
underflow: warnx("minimum blocksize is 512");
   form = "";
   blocksize = n = 512;
  }
 } else
  blocksize = n = 512;

 (void)snprintf(header, sizeof(header), "%ld%s-blocks", n, form);
 *headerlenp = strlen(header);
 *blocksizep = blocksize;
 return (header);
}
