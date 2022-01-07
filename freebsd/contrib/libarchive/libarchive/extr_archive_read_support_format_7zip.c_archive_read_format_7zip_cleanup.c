
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct _7zip {struct _7zip* tmp_stream_buff; struct _7zip** sub_stream_buff; struct _7zip* uncompressed_buffer; struct _7zip* entry_names; struct _7zip* entries; int si; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int free (struct _7zip*) ;
 int free_StreamsInfo (int *) ;
 int free_decompression (struct archive_read*,struct _7zip*) ;

__attribute__((used)) static int
archive_read_format_7zip_cleanup(struct archive_read *a)
{
 struct _7zip *zip;

 zip = (struct _7zip *)(a->format->data);
 free_StreamsInfo(&(zip->si));
 free(zip->entries);
 free(zip->entry_names);
 free_decompression(a, zip);
 free(zip->uncompressed_buffer);
 free(zip->sub_stream_buff[0]);
 free(zip->sub_stream_buff[1]);
 free(zip->sub_stream_buff[2]);
 free(zip->tmp_stream_buff);
 free(zip);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
