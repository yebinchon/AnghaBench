
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSERT_COLON ;
 int INSERT_NEWLINE ;
 int INSERT_SPACE ;
 char const* MM_NULLACT ;
 char const* MM_NULLLBL ;
 char const* MM_NULLTAG ;
 char const* MM_NULLTXT ;
 char* malloc (size_t) ;
 char* nextcomp (char*) ;
 char const* sevinfo (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (char*,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
printfmt(char *msgverb, long class, const char *label, int sev,
    const char *text, const char *act, const char *tag)
{
 size_t size;
 char *comp, *output;
 const char *sevname;

 size = 32;
 if (label != MM_NULLLBL)
  size += strlen(label);
 if ((sevname = sevinfo(sev)) != ((void*)0))
  size += strlen(sevname);
 if (text != MM_NULLTXT)
  size += strlen(text);
 if (act != MM_NULLACT)
  size += strlen(act);
 if (tag != MM_NULLTAG)
  size += strlen(tag);

 if ((output = malloc(size)) == ((void*)0))
  return (((void*)0));
 *output = '\0';
 while ((comp = nextcomp(msgverb)) != ((void*)0)) {
  if (strcmp(comp, "label") == 0 && label != MM_NULLLBL) {
   INSERT_COLON;
   strlcat(output, label, size);
  } else if (strcmp(comp, "severity") == 0 && sevname != ((void*)0)) {
   INSERT_COLON;
   strlcat(output, sevinfo(sev), size);
  } else if (strcmp(comp, "text") == 0 && text != MM_NULLTXT) {
   INSERT_COLON;
   strlcat(output, text, size);
  } else if (strcmp(comp, "action") == 0 && act != MM_NULLACT) {
   INSERT_NEWLINE;
   strlcat(output, "TO FIX: ", size);
   strlcat(output, act, size);
  } else if (strcmp(comp, "tag") == 0 && tag != MM_NULLTAG) {
   INSERT_SPACE;
   strlcat(output, tag, size);
  }
 }
 INSERT_NEWLINE;
 return (output);
}
