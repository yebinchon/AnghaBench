
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; int st_mode; } ;
struct TYPE_5__ {int fd; int size; scalar_t__ offset; } ;
typedef TYPE_1__ FILE ;


 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ S_ISREG (int ) ;
 int VE_GUESS ;
 int close (int) ;
 int free (TYPE_1__*) ;
 scalar_t__ fstat (int,struct stat*) ;
 TYPE_1__* malloc (int) ;
 int open (char const*,int) ;
 scalar_t__ verify_file (int,char const*,int ,int ) ;

FILE *
fopen(const char *filename, const char *mode)
{
 struct stat st;
 int fd, m, o;
 FILE *f;

 if (mode == ((void*)0))
  return ((void*)0);

 switch (*mode++) {
 case 'r':
  m = O_RDONLY;
  o = 0;
  break;

 case 'w':
  m = O_WRONLY;

  o = O_CREAT | O_TRUNC;
  break;

 default:
  return (((void*)0));
 }

 if (*mode == '+')
  m = O_RDWR;

 fd = open(filename, m | o);
 if (fd < 0)
  return ((void*)0);

 f = malloc(sizeof(FILE));
 if (f == ((void*)0)) {
  close(fd);
  return ((void*)0);
 }

 if (fstat(fd, &st) != 0) {
  free(f);
  close(fd);
  return (((void*)0));
 }
 f->fd = fd;
 f->offset = 0;
 f->size = st.st_size;

 return (f);
}
