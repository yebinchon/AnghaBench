
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fibl_head_t {int dummy; } ;
struct fibl {int fl_num; } ;


 int ALLSTRLEN ;
 scalar_t__ EINVAL ;
 int TAILQ_INSERT_TAIL (struct fibl_head_t*,struct fibl*,int ) ;
 void* calloc (int,int) ;
 int defaultfib ;
 scalar_t__ errno ;
 int fiboptlist_range (char*,struct fibl_head_t*) ;
 int fl_next ;
 int free (char*) ;
 int numfibs ;
 int snprintf (char*,int,char*,int,...) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int
fiboptlist_csv(const char *arg, struct fibl_head_t *flh)
{
 struct fibl *fl;
 char *str0, *str, *token, *endptr;
 int fib, error;

 str0 = str = ((void*)0);
 if (strcmp("all", arg) == 0) {
  str = calloc(1, ALLSTRLEN);
  if (str == ((void*)0)) {
   error = 1;
   goto fiboptlist_csv_ret;
  }
  if (numfibs > 1)
   snprintf(str, ALLSTRLEN - 1, "%d-%d", 0, numfibs - 1);
  else
   snprintf(str, ALLSTRLEN - 1, "%d", 0);
 } else if (strcmp("default", arg) == 0) {
  str0 = str = calloc(1, ALLSTRLEN);
  if (str == ((void*)0)) {
   error = 1;
   goto fiboptlist_csv_ret;
  }
  snprintf(str, ALLSTRLEN - 1, "%d", defaultfib);
 } else
  str0 = str = strdup(arg);

 error = 0;
 while ((token = strsep(&str, ",")) != ((void*)0)) {
  if (*token != '-' && strchr(token, '-') != ((void*)0)) {
   error = fiboptlist_range(token, flh);
   if (error)
    goto fiboptlist_csv_ret;
  } else {
   errno = 0;
   fib = strtol(token, &endptr, 0);
   if (errno == 0) {
    if (*endptr != '\0' ||
        fib < 0 ||
        (numfibs != -1 && fib > numfibs - 1))
     errno = EINVAL;
   }
   if (errno) {
    error = 1;
    goto fiboptlist_csv_ret;
   }
   fl = calloc(1, sizeof(*fl));
   if (fl == ((void*)0)) {
    error = 1;
    goto fiboptlist_csv_ret;
   }
   fl->fl_num = fib;
   TAILQ_INSERT_TAIL(flh, fl, fl_next);
  }
 }
fiboptlist_csv_ret:
 if (str0 != ((void*)0))
  free(str0);
 return (error);
}
