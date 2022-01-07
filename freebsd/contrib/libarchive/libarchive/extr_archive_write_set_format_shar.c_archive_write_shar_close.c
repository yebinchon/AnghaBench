
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int s; } ;
struct shar {scalar_t__ wrote_header; TYPE_1__ work; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,int ) ;
 int archive_strcat (TYPE_1__*,char*) ;
 int archive_write_set_bytes_in_last_block (int *,int) ;

__attribute__((used)) static int
archive_write_shar_close(struct archive_write *a)
{
 struct shar *shar;
 int ret;






 shar = (struct shar *)a->format_data;







 if (shar->wrote_header == 0)
  return (ARCHIVE_OK);

 archive_strcat(&shar->work, "exit\n");

 ret = __archive_write_output(a, shar->work.s, shar->work.length);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 archive_write_set_bytes_in_last_block(&a->archive, 1);





 return (ARCHIVE_OK);
}
