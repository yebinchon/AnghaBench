
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int SMB_CFG_FILE ;
 int free (char*) ;
 char* getenv (char*) ;
 char* malloc (scalar_t__) ;
 int printf (char*) ;
 int rc_merge (int ,int **) ;
 int rc_open (char*,char*,int **) ;
 int * smb_rc ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

int
smb_open_rcfile(void)
{
 char *home, *fn;
 int error;

 home = getenv("HOME");
 if (home) {
  fn = malloc(strlen(home) + 20);
  sprintf(fn, "%s/.nsmbrc", home);
  error = rc_open(fn, "r", &smb_rc);
  free(fn);
 }
 error = rc_merge(SMB_CFG_FILE, &smb_rc);
 if (smb_rc == ((void*)0)) {
  printf("Warning: no cfg file(s) found.\n");
  return ENOENT;
 }
 return 0;
}
