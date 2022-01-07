
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct winsize {int dummy; } ;
struct TYPE_3__ {unsigned short ws_row; unsigned short ws_col; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int LINE_MAX ;
 int STDIN_FILENO ;
 int USHRT_MAX ;
 scalar_t__ debug ;
 char* dialog ;
 int errx (int ,char*) ;
 int fflush (int ) ;
 int * fgets (char*,int,int *) ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* maxsize ;
 int memset (void*,char,int) ;
 scalar_t__ pclose (int *) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strtonum (char*,int ,int ,char const**) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
x11_maxsize_update(void)
{
 FILE *f = ((void*)0);
 char *cols;
 char *cp;
 char *rows;
 char cmdbuf[LINE_MAX];
 char rbuf[LINE_MAX];

 if (maxsize == ((void*)0)) {
  if ((maxsize = malloc(sizeof(struct winsize))) == ((void*)0))
   errx(EXIT_FAILURE, "Out of memory?!");
  memset((void *)maxsize, '\0', sizeof(struct winsize));
 }


 snprintf(cmdbuf, LINE_MAX, "%s --print-maxsize 2>&1", dialog);

 fflush(STDIN_FILENO);

 if ((f = popen(cmdbuf, "r")) == ((void*)0)) {
  if (debug)
   warnx("WARNING! Command `%s' failed", cmdbuf);
  return;
 }


 if ((fgets(rbuf, LINE_MAX, f) == ((void*)0)) || (pclose(f) < 0))
  return;


 if (strncmp(rbuf, "Xdialog: Error", 14) == 0)
  return;


 if ((rows = strchr(rbuf, ' ')) == ((void*)0))
  return;
 if ((cols = strchr(rows, ',')) != ((void*)0)) {

  *(cols++) = '\0';
  if ((cp = strchr(cols, '\n')) != ((void*)0))
   *cp = '\0';
 }


 maxsize->ws_row = (unsigned short)strtonum(
     rows, 0, USHRT_MAX, (const char **)((void*)0));
 maxsize->ws_col = (unsigned short)strtonum(
     cols, 0, USHRT_MAX, (const char **)((void*)0));
}
