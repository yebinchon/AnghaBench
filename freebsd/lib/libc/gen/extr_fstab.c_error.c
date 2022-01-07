
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LineNo ;
 int STDERR_FILENO ;
 int _write (int ,char*,int) ;
 char* path_fstab ;
 int sprintf (char*,char*,int) ;
 char* strerror (int) ;
 int strlen (char*) ;

__attribute__((used)) static void
error(int err)
{
 char *p;
 char num[30];

 (void)_write(STDERR_FILENO, "fstab: ", 7);
 (void)_write(STDERR_FILENO, path_fstab, strlen(path_fstab));
 (void)_write(STDERR_FILENO, ":", 1);
 sprintf(num, "%d: ", LineNo);
 (void)_write(STDERR_FILENO, num, strlen(num));
 p = strerror(err);
 (void)_write(STDERR_FILENO, p, strlen(p));
 (void)_write(STDERR_FILENO, "\n", 1);
}
