
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {scalar_t__* e_ident; scalar_t__ e_version; scalar_t__ e_type; scalar_t__ e_machine; int e_phentsize; int e_phoff; int e_phnum; } ;
typedef int Elf_Phdr ;
typedef TYPE_1__ Elf_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_VERSION ;
 scalar_t__ ELF_TARG_CLASS ;
 scalar_t__ ELF_TARG_DATA ;
 scalar_t__ ELF_TARG_MACH ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 scalar_t__ EV_CURRENT ;
 int IS_ELF (TYPE_1__) ;
 scalar_t__ MAP_FAILED ;
 int MAP_PREFAULT_READ ;
 int MAP_PRIVATE ;
 scalar_t__ PAGE_SIZE ;
 int PROT_READ ;
 int _rtld_error (char*,char const*,...) ;
 int errno ;
 TYPE_1__* mmap (int *,scalar_t__,int ,int,int,int ) ;
 int munmap (TYPE_1__*,scalar_t__) ;
 int rtld_strerror (int ) ;

__attribute__((used)) static Elf_Ehdr *
get_elf_header(int fd, const char *path, const struct stat *sbp)
{
 Elf_Ehdr *hdr;


 if (sbp != ((void*)0) && sbp->st_size < (off_t)sizeof(Elf_Ehdr)) {
  _rtld_error("%s: invalid file format", path);
  return (((void*)0));
 }

 hdr = mmap(((void*)0), PAGE_SIZE, PROT_READ, MAP_PRIVATE | MAP_PREFAULT_READ,
     fd, 0);
 if (hdr == (Elf_Ehdr *)MAP_FAILED) {
  _rtld_error("%s: read error: %s", path, rtld_strerror(errno));
  return (((void*)0));
 }


 if (!IS_ELF(*hdr)) {
  _rtld_error("%s: invalid file format", path);
  goto error;
 }
 if (hdr->e_ident[EI_CLASS] != ELF_TARG_CLASS ||
     hdr->e_ident[EI_DATA] != ELF_TARG_DATA) {
  _rtld_error("%s: unsupported file layout", path);
  goto error;
 }
 if (hdr->e_ident[EI_VERSION] != EV_CURRENT ||
     hdr->e_version != EV_CURRENT) {
  _rtld_error("%s: unsupported file version", path);
  goto error;
 }
 if (hdr->e_type != ET_EXEC && hdr->e_type != ET_DYN) {
  _rtld_error("%s: unsupported file type", path);
  goto error;
 }
 if (hdr->e_machine != ELF_TARG_MACH) {
  _rtld_error("%s: unsupported machine", path);
  goto error;
 }






 if (hdr->e_phentsize != sizeof(Elf_Phdr)) {
  _rtld_error(
     "%s: invalid shared object: e_phentsize != sizeof(Elf_Phdr)", path);
  goto error;
 }
 if (hdr->e_phoff + hdr->e_phnum * sizeof(Elf_Phdr) >
     (size_t)PAGE_SIZE) {
  _rtld_error("%s: program header too large", path);
  goto error;
 }
 return (hdr);

error:
 munmap(hdr, PAGE_SIZE);
 return (((void*)0));
}
