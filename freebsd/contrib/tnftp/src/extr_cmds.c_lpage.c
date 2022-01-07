
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULTPAGER ;
 scalar_t__ EMPTYSTRING (char const*) ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int free (char*) ;
 char* ftp_malloc (size_t) ;
 char* getoptionvalue (char*) ;
 char* globulize (char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int system (char*) ;

void
lpage(int argc, char *argv[])
{
 size_t len;
 const char *p;
 char *pager, *locfile;

 if (argc == 0 || argc > 2 ||
     (argc == 1 && !another(&argc, &argv, "local-file"))) {
  UPRINTF("usage: %s local-file\n", argv[0]);
  code = -1;
  return;
 }
 if ((locfile = globulize(argv[1])) == ((void*)0)) {
  code = -1;
  return;
 }
 p = getoptionvalue("pager");
 if (EMPTYSTRING(p))
  p = DEFAULTPAGER;
 len = strlen(p) + strlen(locfile) + 2;
 pager = ftp_malloc(len);
 (void)strlcpy(pager, p, len);
 (void)strlcat(pager, " ", len);
 (void)strlcat(pager, locfile, len);
 system(pager);
 code = 0;
 (void)free(pager);
 (void)free(locfile);
}
