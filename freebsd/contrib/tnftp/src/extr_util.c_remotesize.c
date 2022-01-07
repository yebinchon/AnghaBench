
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int COMPLETE ;
 int ERROR ;
 size_t FEAT_SIZE ;
 int STRTOLL (char*,char**,int) ;
 int code ;
 int command (char*,char const*) ;
 int* features ;
 int fprintf (int ,char*) ;
 int fputs (int ,int ) ;
 scalar_t__ ftp_debug ;
 int isspace (unsigned char) ;
 int putc (char,int ) ;
 int reply_string ;
 char* strchr (int ,char) ;
 int ttyout ;
 int verbose ;

off_t
remotesize(const char *file, int noisy)
{
 int overbose, r;
 off_t size;

 overbose = verbose;
 size = -1;
 if (ftp_debug == 0)
  verbose = -1;
 if (! features[FEAT_SIZE]) {
  if (noisy)
   fprintf(ttyout,
       "SIZE is not supported by remote server.\n");
  goto cleanup_remotesize;
 }
 r = command("SIZE %s", file);
 if (r == COMPLETE) {
  char *cp, *ep;

  cp = strchr(reply_string, ' ');
  if (cp != ((void*)0)) {
   cp++;
   size = STRTOLL(cp, &ep, 10);
   if (*ep != '\0' && !isspace((unsigned char)*ep))
    size = -1;
  }
 } else {
  if (r == ERROR && code == 500 && features[FEAT_SIZE] == -1)
   features[FEAT_SIZE] = 0;
  if (noisy && ftp_debug == 0) {
   fputs(reply_string, ttyout);
   putc('\n', ttyout);
  }
 }
 cleanup_remotesize:
 verbose = overbose;
 return (size);
}
