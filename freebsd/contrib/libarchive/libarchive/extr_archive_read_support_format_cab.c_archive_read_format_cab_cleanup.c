
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfheader {int folder_count; int file_count; struct cab* file_array; struct cab* folder_array; } ;
struct TYPE_3__ {struct cab* memimage; } ;
struct cab {struct cab* uncompressed_buffer; int ws; int xstrm; int stream; scalar_t__ stream_valid; int pathname; struct cfheader cfheader; TYPE_1__ cfdata; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_4__ {int * data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int archive_wstring_free (int *) ;
 int free (struct cab*) ;
 int inflateEnd (int *) ;
 int lzx_decode_free (int *) ;

__attribute__((used)) static int
archive_read_format_cab_cleanup(struct archive_read *a)
{
 struct cab *cab = (struct cab *)(a->format->data);
 struct cfheader *hd = &cab->cfheader;
 int i;

 if (hd->folder_array != ((void*)0)) {
  for (i = 0; i < hd->folder_count; i++)
   free(hd->folder_array[i].cfdata.memimage);
  free(hd->folder_array);
 }
 if (hd->file_array != ((void*)0)) {
  for (i = 0; i < cab->cfheader.file_count; i++)
   archive_string_free(&(hd->file_array[i].pathname));
  free(hd->file_array);
 }




 lzx_decode_free(&cab->xstrm);
 archive_wstring_free(&cab->ws);
 free(cab->uncompressed_buffer);
 free(cab);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
