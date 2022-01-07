
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int archive; int flags; int name; } ;
struct archive_string {int s; } ;


 int ARCHIVE_OK ;
 int archive_set_error (int *,int,char*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int cleanup_pathname_fsobj (int ,int*,struct archive_string*,int ) ;

__attribute__((used)) static int
cleanup_pathname(struct archive_write_disk *a)
{
 struct archive_string error_string;
 int error_number;
 int rc;
 archive_string_init(&error_string);
 rc = cleanup_pathname_fsobj(a->name, &error_number, &error_string,
     a->flags);
 if (rc != ARCHIVE_OK) {
  archive_set_error(&a->archive, error_number, "%s",
      error_string.s);
 }
 archive_string_free(&error_string);
 return rc;
}
