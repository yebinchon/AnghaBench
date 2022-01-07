
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_EDITOR ;
 int EX_CANTCREAT ;
 int EX_NOINPUT ;
 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 int atexit (int (*) ()) ;
 int cleanup_editfile () ;
 int * edit_file ;
 char* edit_path ;
 int err (int ,char*,...) ;
 int errx (int ,char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int isatty (int ) ;
 char* malloc (scalar_t__) ;
 int mkstemp (char*) ;
 int modepage_read (int *) ;
 int modepage_write (int *,int) ;
 int sprintf (char*,char*,char const*,char*) ;
 int * stdin ;
 scalar_t__ strlen (char const*) ;
 int system (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
modepage_edit(void)
{
 const char *editor;
 char *commandline;
 int fd;
 int written;

 if (!isatty(fileno(stdin))) {

  modepage_read(stdin);
  return;
 }


 if ((editor = getenv("EDITOR")) == ((void*)0))
  editor = DEFAULT_EDITOR;


 if ((fd = mkstemp(edit_path)) == -1)
  errx(EX_CANTCREAT, "mkstemp failed");

 atexit(cleanup_editfile);

 if ((edit_file = fdopen(fd, "w")) == ((void*)0))
  err(EX_NOINPUT, "%s", edit_path);

 written = modepage_write(edit_file, 1);

 fclose(edit_file);
 edit_file = ((void*)0);

 if (written == 0) {
  warnx("no editable entries");
  cleanup_editfile();
  return;
 }






 commandline = malloc(strlen(editor) + strlen(edit_path) + 2);
 if (commandline == ((void*)0))
  err(EX_OSERR, ((void*)0));
 sprintf(commandline, "%s %s", editor, edit_path);


 if (system(commandline) == -1)
  err(EX_UNAVAILABLE, "could not invoke %s", editor);
 free(commandline);

 if ((edit_file = fopen(edit_path, "r")) == ((void*)0))
  err(EX_NOINPUT, "%s", edit_path);


 modepage_read(edit_file);

 cleanup_editfile();
}
