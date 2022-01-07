
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

__attribute__((used)) static inline int get_archive_read(struct archive* a,
    struct archive_read** ar)
{
 *ar = (struct archive_read*) a;
 archive_check_magic(a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
     "archive_read_support_format_rar5");

 return ARCHIVE_OK;
}
