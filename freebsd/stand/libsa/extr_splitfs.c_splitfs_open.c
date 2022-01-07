
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct split_file {int filesc; void** descsv; void** filesv; } ;
struct open_file {scalar_t__ f_flags; struct split_file* f_fsdata; } ;


 int CONF_BUF ;
 int EISDIR ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ F_READ ;
 int O_RDONLY ;
 int S_ISREG (int ) ;
 int bzero (struct split_file*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fgetstr (char*,int,int) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ isspace (char) ;
 void* malloc (int) ;
 int open (char*,int ) ;
 int printf (char*) ;
 void* realloc (void**,int) ;
 int split_file_destroy (struct split_file*) ;
 scalar_t__ split_openfile (struct split_file*) ;
 int sprintf (char*,char*,char const*) ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
splitfs_open(const char *fname, struct open_file *f)
{
    char *buf, *confname, *cp;
    int conffd;
    struct split_file *sf;
    struct stat sb;


    if (f->f_flags != F_READ)
 return(EPERM);


    if ((cp = strrchr(fname, '.')) && (!strcmp(cp, ".split")))
 return(ENOENT);


    confname = malloc(strlen(fname) + 7);
    sprintf(confname, "%s.split", fname);


    conffd = open(confname, O_RDONLY);
    free(confname);
    if (conffd == -1)
 return(ENOENT);

    if (fstat(conffd, &sb) < 0) {
 printf("splitfs_open: stat failed\n");
 close(conffd);
 return(ENOENT);
    }
    if (!S_ISREG(sb.st_mode)) {
 printf("splitfs_open: not a file\n");
 close(conffd);
 return(EISDIR);
    }


    sf = malloc(sizeof(struct split_file));
    bzero(sf, sizeof(struct split_file));
    buf = malloc(CONF_BUF);
    while (fgetstr(buf, CONF_BUF, conffd) > 0) {
 cp = buf;
 while ((*cp != '\0') && (isspace(*cp) == 0))
     cp++;
 if (*cp != '\0') {
     *cp = '\0';
     cp++;
 }
 while ((*cp != '\0') && (isspace(*cp) != 0))
     cp++;
 if (*cp == '\0')
     cp = buf;
 sf->filesc++;
 sf->filesv = realloc(sf->filesv, sizeof(*(sf->filesv)) * sf->filesc);
 sf->descsv = realloc(sf->descsv, sizeof(*(sf->descsv)) * sf->filesc);
 sf->filesv[sf->filesc - 1] = strdup(buf);
 sf->descsv[sf->filesc - 1] = strdup(cp);
    }
    free(buf);
    close(conffd);

    if (sf->filesc == 0) {
 split_file_destroy(sf);
 return(ENOENT);
    }
    errno = split_openfile(sf);
    if (errno != 0) {
 split_file_destroy(sf);
 return(ENOENT);
    }


    f->f_fsdata = sf;
    return (0);
}
