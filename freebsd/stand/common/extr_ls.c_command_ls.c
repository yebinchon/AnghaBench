
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;
struct dirent {char* d_name; int d_type; } ;
typedef int lbuf ;


 int CMD_ERROR ;
 int CMD_OK ;
 int S_ISDIR (int) ;
 int close (int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int ls_getdir (char**) ;
 char* malloc (scalar_t__) ;
 int optind ;
 int optreset ;
 int pager_close () ;
 int pager_open () ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,int,...) ;
 struct dirent* readdirfd (int) ;
 int snprintf (char*,int,char*,int,...) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int* typestr ;

__attribute__((used)) static int
command_ls(int argc, char *argv[])
{
    int fd;
    struct stat sb;
    struct dirent *d;
    char *buf, *path;
    char lbuf[128];
    int result, ch;
    int verbose;

    result = CMD_OK;
    fd = -1;
    verbose = 0;
    optind = 1;
    optreset = 1;
    while ((ch = getopt(argc, argv, "l")) != -1) {
 switch (ch) {
 case 'l':
     verbose = 1;
     break;
 case '?':
 default:

     return (CMD_OK);
 }
    }
    argv += (optind - 1);
    argc -= (optind - 1);

    if (argc < 2) {
 path = "";
    } else {
 path = argv[1];
    }

    if (stat(path, &sb) == 0 && !S_ISDIR(sb.st_mode)) {
 if (verbose) {
     printf(" %c %8d %s\n",
  typestr[sb.st_mode >> 12],
  (int)sb.st_size, path);
 } else {
     printf(" %c  %s\n",
  typestr[sb.st_mode >> 12], path);
 }
 return (CMD_OK);
    }

    fd = ls_getdir(&path);
    if (fd == -1) {
 result = CMD_ERROR;
 goto out;
    }
    pager_open();
    pager_output(path);
    pager_output("\n");

    while ((d = readdirfd(fd)) != ((void*)0)) {
 if (strcmp(d->d_name, ".") && strcmp(d->d_name, "..")) {
     if (d->d_type == 0 || verbose) {

  sb.st_size = 0;
  sb.st_mode = 0;
  buf = malloc(strlen(path) + strlen(d->d_name) + 2);
  if (buf != ((void*)0)) {
      sprintf(buf, "%s/%s", path, d->d_name);

      if (stat(buf, &sb)) {
   sb.st_size = 0;
   sb.st_mode = 0;
      }
      free(buf);
  }
     }
     if (verbose) {
  snprintf(lbuf, sizeof(lbuf), " %c %8d %s\n",
      typestr[d->d_type? d->d_type:sb.st_mode >> 12],
      (int)sb.st_size, d->d_name);
     } else {
  snprintf(lbuf, sizeof(lbuf), " %c  %s\n",
      typestr[d->d_type? d->d_type:sb.st_mode >> 12], d->d_name);
     }
     if (pager_output(lbuf))
  goto out;
 }
    }
 out:
    pager_close();
    if (fd != -1)
 close(fd);
    free(path);
    return (result);
}
