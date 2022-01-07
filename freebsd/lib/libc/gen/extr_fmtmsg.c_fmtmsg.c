
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* DFLT_MSGVERB ;
 long MM_CONSOLE ;
 int MM_NOCON ;
 int MM_NOTOK ;
 int MM_OK ;
 long MM_PRINT ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* printfmt (char*,long,char const*,int,char const*,char const*,char const*) ;
 int * stderr ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ validmsgverb (char*) ;

int
fmtmsg(long class, const char *label, int sev, const char *text,
    const char *action, const char *tag)
{
 FILE *fp;
 char *env, *msgverb, *output;

 if (class & MM_PRINT) {
  if ((env = getenv("MSGVERB")) != ((void*)0) && *env != '\0' &&
      strlen(env) <= strlen(DFLT_MSGVERB)) {
   if ((msgverb = strdup(env)) == ((void*)0))
    return (MM_NOTOK);
   else if (validmsgverb(msgverb) == 0) {
    free(msgverb);
    goto def;
   }
  } else {
def:
   if ((msgverb = strdup(DFLT_MSGVERB)) == ((void*)0))
    return (MM_NOTOK);
  }
  output = printfmt(msgverb, class, label, sev, text, action,
      tag);
  if (output == ((void*)0)) {
   free(msgverb);
   return (MM_NOTOK);
  }
  if (*output != '\0')
   fprintf(stderr, "%s", output);
  free(msgverb);
  free(output);
 }
 if (class & MM_CONSOLE) {
  output = printfmt(DFLT_MSGVERB, class, label, sev, text,
      action, tag);
  if (output == ((void*)0))
   return (MM_NOCON);
  if (*output != '\0') {
   if ((fp = fopen("/dev/console", "ae")) == ((void*)0)) {
    free(output);
    return (MM_NOCON);
   }
   fprintf(fp, "%s", output);
   fclose(fp);
  }
  free(output);
 }
 return (MM_OK);
}
