
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct module {scalar_t__ ctfdata; scalar_t__ symtbl; scalar_t__ strings; TYPE_2__* strhdr; TYPE_1__* symhdr; int ctfsize; } ;
struct TYPE_14__ {char* cts_name; scalar_t__ cts_data; int cts_entsize; scalar_t__ cts_offset; int cts_size; scalar_t__ cts_flags; int cts_type; } ;
typedef TYPE_4__ ctf_sect_t ;
struct TYPE_13__ {int cts_size; scalar_t__ cts_data; } ;
struct TYPE_15__ {int ctf_size; TYPE_3__ ctf_data; scalar_t__ ctf_base; } ;
typedef TYPE_5__ ctf_file_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_12__ {int sh_size; } ;
struct TYPE_11__ {int sh_size; } ;
typedef int Elf64_Sym ;
typedef int Elf32_Sym ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 scalar_t__ SHF_ALLOC ;
 int SHT_PROGBITS ;
 int SHT_STRTAB ;
 int SHT_SYMTAB ;
 TYPE_5__* ctf_bufopen (TYPE_4__*,TYPE_4__*,TYPE_4__*,int*) ;
 int ctf_leave_compressed ;
 int kobj_set_ctf (struct module*,scalar_t__,int ) ;
 int mod_lock ;

ctf_file_t *
ctf_modopen(struct module *mp, int *error)
{
 ctf_sect_t ctfsect, symsect, strsect;
 ctf_file_t *fp = ((void*)0);
 int err;

 if (error == ((void*)0))
  error = &err;

 ctfsect.cts_name = ".SUNW_ctf";
 ctfsect.cts_type = SHT_PROGBITS;
 ctfsect.cts_flags = SHF_ALLOC;
 ctfsect.cts_data = mp->ctfdata;
 ctfsect.cts_size = mp->ctfsize;
 ctfsect.cts_entsize = 1;
 ctfsect.cts_offset = 0;

 symsect.cts_name = ".symtab";
 symsect.cts_type = SHT_SYMTAB;
 symsect.cts_flags = 0;
 symsect.cts_data = mp->symtbl;
 symsect.cts_size = mp->symhdr->sh_size;

 symsect.cts_entsize = sizeof (Elf64_Sym);



 symsect.cts_offset = 0;

 strsect.cts_name = ".strtab";
 strsect.cts_type = SHT_STRTAB;
 strsect.cts_flags = 0;
 strsect.cts_data = mp->strings;
 strsect.cts_size = mp->strhdr->sh_size;
 strsect.cts_entsize = 1;
 strsect.cts_offset = 0;

 ASSERT(MUTEX_HELD(&mod_lock));

 if ((fp = ctf_bufopen(&ctfsect, &symsect, &strsect, error)) == ((void*)0))
  return (((void*)0));

 if (!ctf_leave_compressed && (caddr_t)fp->ctf_base != mp->ctfdata) {
  kobj_set_ctf(mp, (caddr_t)fp->ctf_base, fp->ctf_size);
  fp->ctf_data.cts_data = fp->ctf_base;
  fp->ctf_data.cts_size = fp->ctf_size;
 }

 return (fp);
}
