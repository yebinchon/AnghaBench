
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct preloaded_file {int f_size; } ;
struct multiboot_header {scalar_t__ magic; int flags; scalar_t__ checksum; } ;
typedef int ssize_t ;
typedef int * caddr_t ;


 int EFTYPE ;
 int ENOMEM ;
 scalar_t__ MULTIBOOT_HEADER_MAGIC ;
 int MULTIBOOT_SEARCH ;
 int MULTIBOOT_SUPPORTED_FLAGS ;
 int O_RDONLY ;
 int PAGE_SIZE ;
 int close (int) ;
 int elf32_loadfile_raw (char*,int ,struct preloaded_file**,int) ;
 int errno ;
 int free (int *) ;
 int * malloc (int ) ;
 int open (char*,int ) ;
 int printf (char*,int,...) ;
 int read (int,int *,int ) ;
 int roundup (int ,int ) ;

__attribute__((used)) static int
multiboot_loadfile(char *filename, uint64_t dest,
    struct preloaded_file **result)
{
 uint32_t *magic;
 int i, error;
 caddr_t header_search;
 ssize_t search_size;
 int fd;
 struct multiboot_header *header;
 char *cmdline;





 if (filename == ((void*)0))
  return (EFTYPE);
 if ((fd = open(filename, O_RDONLY)) == -1)
  return (errno);
 header_search = malloc(MULTIBOOT_SEARCH);
 if (header_search == ((void*)0)) {
  close(fd);
  return (ENOMEM);
 }
 search_size = read(fd, header_search, MULTIBOOT_SEARCH);
 magic = (uint32_t *)header_search;

 header = ((void*)0);
 for (i = 0; i < (search_size / sizeof(uint32_t)); i++) {
  if (magic[i] == MULTIBOOT_HEADER_MAGIC) {
   header = (struct multiboot_header *)&magic[i];
   break;
  }
 }

 if (header == ((void*)0)) {
  error = EFTYPE;
  goto out;
 }


 if (header->magic + header->flags + header->checksum != 0) {
  printf(
 "Multiboot checksum failed, magic: 0x%x flags: 0x%x checksum: 0x%x\n",
 header->magic, header->flags, header->checksum);
  error = EFTYPE;
  goto out;
 }

 if ((header->flags & ~MULTIBOOT_SUPPORTED_FLAGS) != 0) {
  printf("Unsupported multiboot flags found: 0x%x\n",
      header->flags);
  error = EFTYPE;
  goto out;
 }

 error = elf32_loadfile_raw(filename, dest, result, 1);
 if (error != 0) {
  printf(
 "elf32_loadfile_raw failed: %d unable to load multiboot kernel\n",
 error);
  goto out;
 }






 (*result)->f_size = roundup((*result)->f_size, PAGE_SIZE);

out:
 free(header_search);
 close(fd);
 return (error);
}
