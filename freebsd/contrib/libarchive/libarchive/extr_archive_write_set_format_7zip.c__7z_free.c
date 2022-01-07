
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_write {int archive; scalar_t__ format_data; } ;
struct TYPE_2__ {struct _7zip* props; } ;
struct _7zip {scalar_t__ temp_fd; TYPE_1__ coder; int stream; } ;


 int ARCHIVE_OK ;
 int close (scalar_t__) ;
 int compression_end (int *,int *) ;
 int file_free_register (struct _7zip*) ;
 int free (struct _7zip*) ;

__attribute__((used)) static int
_7z_free(struct archive_write *a)
{
 struct _7zip *zip = (struct _7zip *)a->format_data;


 if (zip->temp_fd >= 0)
  close(zip->temp_fd);

 file_free_register(zip);
 compression_end(&(a->archive), &(zip->stream));
 free(zip->coder.props);
 free(zip);

 return (ARCHIVE_OK);
}
