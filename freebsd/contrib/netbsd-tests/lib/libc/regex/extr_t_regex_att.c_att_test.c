
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atf_tc {int dummy; } ;
typedef char regmatch_t ;
typedef int regex_t ;
typedef int data_path ;
typedef int FILE ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,int,...) ;
 int MAXPATHLEN ;
 int REG_BASIC ;
 int REG_EXTENDED ;
 int REG_NOSPEC ;
 int atf_tc_fail (char*,char*) ;
 char* atf_tc_get_config_var (struct atf_tc const*,char*) ;
 scalar_t__ bug (char*,char*,size_t) ;
 char* calloc (size_t,int) ;
 int checkcomment (char*,size_t) ;
 int checkmatches (char*,size_t,char*,size_t) ;
 int delim ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char* fparseln (int *,size_t*,size_t*,int ,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int geterror (char*,int*,int*) ;
 int getflags (char*) ;
 size_t getmatches (char*) ;
 int optional (char*) ;
 int regcomp (int *,char*,int) ;
 int regexec (int *,char*,size_t,char*,int ) ;
 int regfree (int *) ;
 int sep ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int stderr ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strtok (char*,int ) ;
 int strunvis (char*,char*) ;
 int unsupported (char*) ;

__attribute__((used)) static void
att_test(const struct atf_tc *tc, const char *data_name)
{
 regex_t re;
 char *line, *lastpattern = ((void*)0), data_path[MAXPATHLEN];
 size_t len, lineno = 0;
 int skipping = 0;
 FILE *input_file;

 snprintf(data_path, sizeof(data_path), "%s/data/%s.dat",
     atf_tc_get_config_var(tc, "srcdir"), data_name);

 input_file = fopen(data_path, "r");
 if (input_file == ((void*)0))
  atf_tc_fail("Failed to open input file %s", data_path);

 for (; (line = fparseln(input_file, &len, &lineno, delim, 0))
     != ((void*)0); free(line)) {
  char *name, *pattern, *input, *matches, *comment;
  regmatch_t *pm;
  size_t nm;



  if ((name = strtok(line, sep)) == ((void*)0))
   continue;






  if (*name == '}') {
   skipping = 0;
   continue;
  }
  if (skipping)
   continue;
  if (*name == ';' || *name == '#' || strcmp(name, "NOTE") == 0)
   continue;
  if (*name == ':') {

   while (*++name && *name != ':')
    continue;
   if (*name)
    name++;
  }

  ATF_REQUIRE_MSG((pattern = strtok(((void*)0), sep)) != ((void*)0),
   "Missing pattern at line %zu", lineno);
  ATF_REQUIRE_MSG((input = strtok(((void*)0), sep)) != ((void*)0),
   "Missing input at line %zu", lineno);

  if (strchr(name, '$')) {
   ATF_REQUIRE(strunvis(pattern, pattern) != -1);
   ATF_REQUIRE(strunvis(input, input) != -1);
  }


  if (strcmp(input, "NULL") == 0)
   *input = '\0';

  if (strcmp(pattern, "SAME") == 0) {
   ATF_REQUIRE(lastpattern != ((void*)0));
   pattern = lastpattern;
  } else {
   free(lastpattern);
   ATF_REQUIRE((lastpattern = strdup(pattern)) != ((void*)0));
  }

  ATF_REQUIRE_MSG((matches = strtok(((void*)0), sep)) != ((void*)0),
      "Missing matches at line %zu", lineno);

  comment = strtok(((void*)0), sep);
  switch (*name) {
  case '{':
   if (optional(comment)) {
    skipping++;
    continue;
   }
   name++;
   break;
  case '}':
   skipping = 0;
   continue;
  case '?':
  case '|':
   if (unsupported(comment))
    continue;
   name++;
   break;
  case '#':
  case ';':
   continue;
  default:
   break;
  }


  if (bug(pattern, input, lineno))
   continue;

  int comp, exec;
  if (*matches != '(') {
   geterror(matches, &comp, &exec);
   pm = ((void*)0);
   nm = 0;
  } else {
   comp = exec = 0;
   nm = getmatches(matches);
   ATF_REQUIRE((pm = calloc(nm, sizeof(*pm))) != ((void*)0));
  }



  int iflags = getflags(name);
  for (; *name; name++) {
   int flags;
   switch (*name) {
   case 'B':
    flags = REG_BASIC;
    break;
   case 'E':
    flags = REG_EXTENDED;
    break;
   case 'L':
    flags = REG_NOSPEC;
    break;
   default:
    ATF_REQUIRE_MSG(0, "Bad name %c", *name);
    continue;
   }
   int c = regcomp(&re, pattern, flags | iflags);
   ATF_REQUIRE_MSG(c == comp,
       "regcomp returned %d for pattern %s at line %zu",
       c, pattern, lineno);
   if (c)
    continue;
   int e = regexec(&re, input, nm, pm, 0);
   ATF_REQUIRE_MSG(e == exec, "Expected error %d,"
       " got %d at line %zu", exec, e, lineno);
   checkmatches(matches, nm, pm, lineno);
   checkcomment(comment, lineno);
   regfree(&re);
  }
  free(pm);
 }

 fclose(input_file);
}
