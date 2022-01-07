
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tar {int localname; int longlink; int longname; int pax_header; int pax_global; int line; int entry_gname; int entry_uname; int entry_linkpath; int entry_pathname_override; int entry_pathname; int acl_text; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int free (struct tar*) ;
 int gnu_clear_sparse_list (struct tar*) ;

__attribute__((used)) static int
archive_read_format_tar_cleanup(struct archive_read *a)
{
 struct tar *tar;

 tar = (struct tar *)(a->format->data);
 gnu_clear_sparse_list(tar);
 archive_string_free(&tar->acl_text);
 archive_string_free(&tar->entry_pathname);
 archive_string_free(&tar->entry_pathname_override);
 archive_string_free(&tar->entry_linkpath);
 archive_string_free(&tar->entry_uname);
 archive_string_free(&tar->entry_gname);
 archive_string_free(&tar->line);
 archive_string_free(&tar->pax_global);
 archive_string_free(&tar->pax_header);
 archive_string_free(&tar->longname);
 archive_string_free(&tar->longlink);
 archive_string_free(&tar->localname);
 free(tar);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
