
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int id; int boot_filename; int catalog_filename; } ;
struct TYPE_7__ {int max_depth; struct iso9660* pathtbl; int rootent; } ;
struct TYPE_6__ {scalar_t__ joliet; } ;
struct TYPE_5__ {int max_depth; struct iso9660* pathtbl; int rootent; } ;
struct iso9660 {scalar_t__ temp_fd; int mbs; int utf16be; TYPE_4__ el_torito; int bibliographic_file_identifier; int abstract_file_identifier; int copyright_file_identifier; int application_identifier; int data_preparer_identifier; int publisher_identifier; int volume_identifier; int cur_dirstr; TYPE_3__ joliet; struct iso9660* sorted; TYPE_2__ opt; TYPE_1__ primary; } ;
struct archive_write {struct iso9660* format_data; } ;


 int archive_string_free (int *) ;
 int close (scalar_t__) ;
 int free (struct iso9660*) ;
 int isoent_free_all (int ) ;
 int isofile_free_all_entries (struct iso9660*) ;
 int isofile_free_hardlinks (struct iso9660*) ;
 int zisofs_free (struct archive_write*) ;

__attribute__((used)) static int
iso9660_free(struct archive_write *a)
{
 struct iso9660 *iso9660;
 int i, ret;

 iso9660 = a->format_data;


 if (iso9660->temp_fd >= 0)
  close(iso9660->temp_fd);


 ret = zisofs_free(a);


 isoent_free_all(iso9660->primary.rootent);
 for (i = 0; i < iso9660->primary.max_depth; i++)
  free(iso9660->primary.pathtbl[i].sorted);
 free(iso9660->primary.pathtbl);

 if (iso9660->opt.joliet) {
  isoent_free_all(iso9660->joliet.rootent);
  for (i = 0; i < iso9660->joliet.max_depth; i++)
   free(iso9660->joliet.pathtbl[i].sorted);
  free(iso9660->joliet.pathtbl);
 }


 isofile_free_all_entries(iso9660);
 isofile_free_hardlinks(iso9660);

 archive_string_free(&(iso9660->cur_dirstr));
 archive_string_free(&(iso9660->volume_identifier));
 archive_string_free(&(iso9660->publisher_identifier));
 archive_string_free(&(iso9660->data_preparer_identifier));
 archive_string_free(&(iso9660->application_identifier));
 archive_string_free(&(iso9660->copyright_file_identifier));
 archive_string_free(&(iso9660->abstract_file_identifier));
 archive_string_free(&(iso9660->bibliographic_file_identifier));
 archive_string_free(&(iso9660->el_torito.catalog_filename));
 archive_string_free(&(iso9660->el_torito.boot_filename));
 archive_string_free(&(iso9660->el_torito.id));
 archive_string_free(&(iso9660->utf16be));
 archive_string_free(&(iso9660->mbs));

 free(iso9660);
 a->format_data = ((void*)0);

 return (ret);
}
