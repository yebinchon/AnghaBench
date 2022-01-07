
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int CALLBACK (int ,char const*) ;
 int INTERP_MARKER ;
 int LOADER_PATH ;
 int O_RDONLY ;
 char* bootprog_interp ;
 int close (int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* memmem (char*,size_t,int ,size_t) ;
 int open (int ,int ) ;
 size_t read (int,char*,size_t) ;
 scalar_t__ stat (int ,struct stat*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (int ) ;
 int swap_interpreter ;

__attribute__((used)) static void
check_interpreter(void)
{
 struct stat st;
 size_t marklen, rdsize;
 const char *guest_interp, *my_interp;
 char *buf;
 int fd;






 buf = ((void*)0);
 if (stat(LOADER_PATH, &st) != 0)
  return;
 if ((fd = open(LOADER_PATH, O_RDONLY)) < 0)
  return;

 rdsize = st.st_size;
 buf = malloc(rdsize);
 if (buf == ((void*)0))
  goto out;
 if (read(fd, buf, rdsize) < rdsize)
  goto out;

 marklen = strlen(INTERP_MARKER);
 my_interp = bootprog_interp + marklen;







 if ((guest_interp = memmem(buf, rdsize, INTERP_MARKER,
     marklen)) != ((void*)0))
  guest_interp += marklen;
 else
  guest_interp = "4th";







 if (strcmp(my_interp, guest_interp) != 0)
  CALLBACK(swap_interpreter, guest_interp);
out:
 free(buf);
 close(fd);
 return;
}
