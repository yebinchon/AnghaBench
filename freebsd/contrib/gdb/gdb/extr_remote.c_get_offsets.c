
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct section_offsets {int* offsets; } ;
struct remote_state {int remote_packet_size; } ;
struct TYPE_6__ {int num_sections; int section_offsets; } ;
typedef int CORE_ADDR ;


 size_t SECT_OFF_BSS (TYPE_1__*) ;
 size_t SECT_OFF_DATA (TYPE_1__*) ;
 size_t SECT_OFF_TEXT (TYPE_1__*) ;
 int SIZEOF_N_SECTION_OFFSETS (int ) ;
 char* alloca (int ) ;
 int error (char*,char*) ;
 int fromhex (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int memcpy (struct section_offsets*,int ,int ) ;
 int objfile_relocate (TYPE_1__*,struct section_offsets*) ;
 int putpkt (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_1__* symfile_objfile ;
 int warning (char*,char*) ;

__attribute__((used)) static void
get_offsets (void)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);
  char *ptr;
  int lose;
  CORE_ADDR text_addr, data_addr, bss_addr;
  struct section_offsets *offs;

  putpkt ("qOffsets");

  getpkt (buf, (rs->remote_packet_size), 0);

  if (buf[0] == '\000')
    return;

  if (buf[0] == 'E')
    {
      warning ("Remote failure reply: %s", buf);
      return;
    }





  text_addr = data_addr = bss_addr = 0;
  ptr = buf;
  lose = 0;

  if (strncmp (ptr, "Text=", 5) == 0)
    {
      ptr += 5;

      while (*ptr && *ptr != ';')
 text_addr = (text_addr << 4) + fromhex (*ptr++);
    }
  else
    lose = 1;

  if (!lose && strncmp (ptr, ";Data=", 6) == 0)
    {
      ptr += 6;
      while (*ptr && *ptr != ';')
 data_addr = (data_addr << 4) + fromhex (*ptr++);
    }
  else
    lose = 1;

  if (!lose && strncmp (ptr, ";Bss=", 5) == 0)
    {
      ptr += 5;
      while (*ptr && *ptr != ';')
 bss_addr = (bss_addr << 4) + fromhex (*ptr++);
    }
  else
    lose = 1;

  if (lose)
    error ("Malformed response to offset query, %s", buf);

  if (symfile_objfile == ((void*)0))
    return;

  offs = ((struct section_offsets *)
   alloca (SIZEOF_N_SECTION_OFFSETS (symfile_objfile->num_sections)));
  memcpy (offs, symfile_objfile->section_offsets,
   SIZEOF_N_SECTION_OFFSETS (symfile_objfile->num_sections));

  offs->offsets[SECT_OFF_TEXT (symfile_objfile)] = text_addr;





  offs->offsets[SECT_OFF_DATA (symfile_objfile)] = data_addr;
  offs->offsets[SECT_OFF_BSS (symfile_objfile)] = data_addr;

  objfile_relocate (symfile_objfile, offs);
}
