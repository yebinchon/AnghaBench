
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int s; } ;
struct shar {scalar_t__ outpos; TYPE_1__ work; int * entry; int end_of_line; scalar_t__ has_data; int outbuff; scalar_t__ dump; } ;
struct archive_write {scalar_t__ format_data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,int) ;
 char* archive_entry_fflags_text (int *) ;
 int archive_entry_free (int *) ;
 char* archive_entry_gname (int *) ;
 int archive_entry_mode (int *) ;
 char const* archive_entry_pathname (int *) ;
 char* archive_entry_uname (int *) ;
 int archive_strappend_char (TYPE_1__*,char) ;
 int archive_strcat (TYPE_1__*,char*) ;
 int archive_string_empty (TYPE_1__*) ;
 int archive_string_sprintf (TYPE_1__*,char*,...) ;
 int shar_quote (TYPE_1__*,char const*,int) ;
 int uuencode_line (struct archive_write*,struct shar*,int ,scalar_t__) ;

__attribute__((used)) static int
archive_write_shar_finish_entry(struct archive_write *a)
{
 const char *g, *p, *u;
 struct shar *shar;
 int ret;

 shar = (struct shar *)a->format_data;
 if (shar->entry == ((void*)0))
  return (0);

 if (shar->dump) {

  if (shar->has_data) {
   if (shar->outpos > 0)
    uuencode_line(a, shar, shar->outbuff,
        shar->outpos);
   archive_strcat(&shar->work, "`\nend\n");
   archive_strcat(&shar->work, "SHAR_END\n");
  }





  archive_string_sprintf(&shar->work, "chmod %o ",
      (unsigned int)(archive_entry_mode(shar->entry) & 07777));
  shar_quote(&shar->work, archive_entry_pathname(shar->entry), 1);
  archive_strcat(&shar->work, "\n");

  u = archive_entry_uname(shar->entry);
  g = archive_entry_gname(shar->entry);
  if (u != ((void*)0) || g != ((void*)0)) {
   archive_strcat(&shar->work, "chown ");
   if (u != ((void*)0))
    shar_quote(&shar->work, u, 1);
   if (g != ((void*)0)) {
    archive_strcat(&shar->work, ":");
    shar_quote(&shar->work, g, 1);
   }
   archive_strcat(&shar->work, " ");
   shar_quote(&shar->work,
       archive_entry_pathname(shar->entry), 1);
   archive_strcat(&shar->work, "\n");
  }

  if ((p = archive_entry_fflags_text(shar->entry)) != ((void*)0)) {
   archive_string_sprintf(&shar->work, "chflags %s ", p);
   shar_quote(&shar->work,
       archive_entry_pathname(shar->entry), 1);
   archive_strcat(&shar->work, "\n");
  }



 } else {
  if (shar->has_data) {

   if (!shar->end_of_line)
    archive_strappend_char(&shar->work, '\n');
   archive_strcat(&shar->work, "SHAR_END\n");
  }
 }

 archive_entry_free(shar->entry);
 shar->entry = ((void*)0);

 if (shar->work.length < 65536)
  return (ARCHIVE_OK);

 ret = __archive_write_output(a, shar->work.s, shar->work.length);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);
 archive_string_empty(&shar->work);

 return (ARCHIVE_OK);
}
