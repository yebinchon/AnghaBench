
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arg ;


 int WS ;
 scalar_t__ debug ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 char* fparseln (int ,size_t*,size_t*,int *,int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int optreset ;
 int snprintf (char*,int,char*,int,...) ;
 int stderr ;
 int stdin ;
 int strcat (char*,char*) ;
 char* strchr (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strtok (char*,int ) ;

int
main(int argc, char *argv[])
{
 size_t len, lineno = 0;
 char *line, *ptr, *optstring = ((void*)0), *result = ((void*)0);
 char buf[1024];
 char *args[100];
 char arg[100];
 int nargs = -1;
 int c;

 while ((line = fparseln(stdin, &len, &lineno, ((void*)0), 0)) != ((void*)0)) {
  if (strncmp(line, "load:", 5) == 0) {
   if (optstring)
    free(optstring);
   optstring = strtok(&line[6], WS);
   if (optstring == ((void*)0))
       errx(1, "missing optstring at line %ld",
    (unsigned long)lineno);
   optstring = strdup(optstring);
   if (debug)
    fprintf(stderr, "optstring = %s\n", optstring);
  } else if (strncmp(line, "args:", 5) == 0) {
   for (; nargs >= 0; nargs--) {
    if (args[nargs] != ((void*)0))
     free(args[nargs]);
   }
   args[nargs = 0] = strtok(&line[6], WS);
   if (args[nargs] == ((void*)0))
    errx(1, "missing args at line %ld",
        (unsigned long)lineno);

   args[nargs] = strdup(args[nargs]);
   while ((args[++nargs] = strtok(((void*)0), WS)) != ((void*)0))
    args[nargs] = strdup(args[nargs]);
   if (debug) {
    int i = 0;
    for (i = 0; i < nargs; i++)
     fprintf(stderr, "argv[%d] = %s\n", i,
         args[i]);
   }
  } else if (strncmp(line, "result:", 7) == 0) {
   buf[0] = '\0';
   optind = optreset = 1;
   if (result)
    free(result);
   result = strtok(&line[8], WS);
   if (result == ((void*)0))
    errx(1, "missing result at line %ld",
        (unsigned long)lineno);
   result = strdup(result);
   if (nargs == -1)
    errx(1, "result: without args:");
   if (debug)
    fprintf(stderr, "result = %s\n", result);
   while ((c = getopt(nargs, args, optstring)) != -1) {
    if (c == ':')
     err(1, "`:' found as argument char");
    if ((ptr = strchr(optstring, c)) == ((void*)0)) {
     snprintf(arg, sizeof(arg), "!%c,", c);
     strcat(buf, arg);
     continue;
    }
    if (ptr[1] != ':')
     snprintf(arg, sizeof(arg), "%c,", c);
    else
     snprintf(arg, sizeof(arg), "%c=%s,",
         c, optarg);
    strcat(buf, arg);
   }
   len = strlen(buf);
   if (len > 0) {
    buf[len - 1] = '|';
    buf[len] = '\0';
   } else {
    buf[0] = '|';
    buf[1] = '\0';
   }
   snprintf(arg, sizeof(arg), "%d", nargs - optind);
   strcat(buf, arg);
   if (strcmp(buf, result) != 0)
    errx(1, "`%s' != `%s'", buf, result);
  }
  free(line);
 }
 return 0;
}
