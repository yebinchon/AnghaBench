
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct elfhints_hdr {scalar_t__ magic; int version; int dirlist; int strtab; } ;


 scalar_t__ ELFHINTS_MAGIC ;
 scalar_t__ ENOENT ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 scalar_t__ MAXFILESIZE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int add_dir (char const*,char*,int) ;
 int close (int) ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*,...) ;
 int fstat (int,struct stat*) ;
 void* mmap (int *,scalar_t__,int,int ,int,int ) ;
 int open (char const*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
read_elf_hints(const char *hintsfile, int must_exist)
{
 int fd;
 struct stat s;
 void *mapbase;
 struct elfhints_hdr *hdr;
 char *strtab;
 char *dirlist;
 char *p;

 if ((fd = open(hintsfile, O_RDONLY)) == -1) {
  if (errno == ENOENT && !must_exist)
   return;
  err(1, "Cannot open \"%s\"", hintsfile);
 }
 if (fstat(fd, &s) == -1)
  err(1, "Cannot stat \"%s\"", hintsfile);
 if (s.st_size > MAXFILESIZE)
  errx(1, "\"%s\" is unreasonably large", hintsfile);




 mapbase = mmap(((void*)0), s.st_size, PROT_READ|PROT_WRITE,
     MAP_PRIVATE, fd, 0);
 if (mapbase == MAP_FAILED)
  err(1, "Cannot mmap \"%s\"", hintsfile);
 close(fd);

 hdr = (struct elfhints_hdr *)mapbase;
 if (hdr->magic != ELFHINTS_MAGIC)
  errx(1, "\"%s\": invalid file format", hintsfile);
 if (hdr->version != 1)
  errx(1, "\"%s\": unrecognized file version (%d)", hintsfile,
      hdr->version);

 strtab = (char *)mapbase + hdr->strtab;
 dirlist = strtab + hdr->dirlist;

 if (*dirlist != '\0')
  while ((p = strsep(&dirlist, ":")) != ((void*)0))
   add_dir(hintsfile, p, 1);
}
