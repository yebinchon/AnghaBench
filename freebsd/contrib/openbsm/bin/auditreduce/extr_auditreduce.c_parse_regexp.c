
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_entry {int re_negate; int re_regexp; void* re_pattern; } ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct re_entry*,int ) ;
 struct re_entry* calloc (int,int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int re_glue ;
 int re_head ;
 int regcomp (int *,void*,int) ;
 int regerror (int,int *,char*,int) ;
 int stderr ;
 void* strdup (char*) ;
 char* strerror (int ) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
parse_regexp(char *re_string)
{
 char *orig, *copy, re_error[64];
 struct re_entry *rep;
 int error, nstrs, i, len;

 copy = strdup(re_string);
 orig = copy;
 len = strlen(copy);
 for (nstrs = 0, i = 0; i < len; i++) {
  if (copy[i] == ',' && i > 0) {
   if (copy[i - 1] == '\\')
    strlcpy(&copy[i - 1], &copy[i], len);
   else {
    nstrs++;
    copy[i] = '\0';
   }
  }
 }
 TAILQ_INIT(&re_head);
 for (i = 0; i < nstrs + 1; i++) {
  rep = calloc(1, sizeof(*rep));
  if (rep == ((void*)0)) {
   (void) fprintf(stderr, "calloc: %s\n",
       strerror(errno));
   exit(1);
  }
  if (*copy == '~') {
   copy++;
   rep->re_negate = 1;
  }
  rep->re_pattern = strdup(copy);
  error = regcomp(&rep->re_regexp, rep->re_pattern,
      REG_EXTENDED | REG_NOSUB);
  if (error != 0) {
   regerror(error, &rep->re_regexp, re_error, 64);
   (void) fprintf(stderr, "regcomp: %s\n", re_error);
   exit(1);
  }
  TAILQ_INSERT_TAIL(&re_head, rep, re_glue);
  len = strlen(copy);
  copy += len + 1;
 }
 free(orig);
}
