
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ ssize_t ;


 int EXIT_FAILURE ;
 int O_RDONLY ;
 int S_ISREG (int ) ;
 int close (int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,char const*,...) ;
 void* malloc (scalar_t__) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,void*,scalar_t__) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static void *
gpart_bootfile_read(const char *bootfile, ssize_t *size)
{
 struct stat sb;
 void *code;
 int fd;

 if (stat(bootfile, &sb) == -1)
  err(EXIT_FAILURE, "%s", bootfile);
 if (!S_ISREG(sb.st_mode))
  errx(EXIT_FAILURE, "%s: not a regular file", bootfile);
 if (sb.st_size == 0)
  errx(EXIT_FAILURE, "%s: empty file", bootfile);
 if (*size > 0 && sb.st_size > *size)
  errx(EXIT_FAILURE, "%s: file too big (%zu limit)", bootfile,
      *size);

 *size = sb.st_size;

 fd = open(bootfile, O_RDONLY);
 if (fd == -1)
  err(EXIT_FAILURE, "%s", bootfile);
 code = malloc(*size);
 if (code == ((void*)0))
  err(EXIT_FAILURE, ((void*)0));
 if (read(fd, code, *size) != *size)
  err(EXIT_FAILURE, "%s", bootfile);
 close(fd);

 return (code);
}
