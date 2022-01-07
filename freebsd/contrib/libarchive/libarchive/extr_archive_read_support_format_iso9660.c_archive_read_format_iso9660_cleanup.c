
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int stream; scalar_t__ stream_valid; struct iso9660* block_pointers; struct iso9660* uncompressed_buffer; } ;
struct TYPE_6__ {struct iso9660* files; } ;
struct TYPE_5__ {struct iso9660* reqs; } ;
struct iso9660 {struct iso9660* utf16be_previous_path; struct iso9660* utf16be_path; TYPE_3__ entry_zisofs; TYPE_2__ pending_files; int previous_pathname; int pathname; TYPE_1__ read_ce_req; } ;
struct archive_read {TYPE_4__* format; int archive; } ;
struct TYPE_8__ {int * data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ Z_OK ;
 int archive_set_error (int *,int ,char*) ;
 int archive_string_free (int *) ;
 int free (struct iso9660*) ;
 scalar_t__ inflateEnd (int *) ;
 int release_files (struct iso9660*) ;

__attribute__((used)) static int
archive_read_format_iso9660_cleanup(struct archive_read *a)
{
 struct iso9660 *iso9660;
 int r = ARCHIVE_OK;

 iso9660 = (struct iso9660 *)(a->format->data);
 release_files(iso9660);
 free(iso9660->read_ce_req.reqs);
 archive_string_free(&iso9660->pathname);
 archive_string_free(&iso9660->previous_pathname);
 free(iso9660->pending_files.files);
 free(iso9660->utf16be_path);
 free(iso9660->utf16be_previous_path);
 free(iso9660);
 (a->format->data) = ((void*)0);
 return (r);
}
