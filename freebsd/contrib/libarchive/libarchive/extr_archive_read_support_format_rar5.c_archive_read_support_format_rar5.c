
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rar5 {int dummy; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct rar5*,char*,int ,int ,int ,int ,int ,int ,int (*) (struct archive_read*),int ,int ) ;
 int archive_set_error (int *,int ,char*) ;
 int get_archive_read (struct archive*,struct archive_read**) ;
 struct rar5* malloc (int) ;
 int rar5_bid ;
 int rar5_capabilities ;
 int rar5_cleanup (struct archive_read*) ;
 int rar5_has_encrypted_entries ;
 int rar5_init (struct rar5*) ;
 int rar5_options ;
 int rar5_read_data ;
 int rar5_read_data_skip ;
 int rar5_read_header ;
 int rar5_seek_data ;

int archive_read_support_format_rar5(struct archive *_a) {
 struct archive_read* ar;
 int ret;
 struct rar5* rar;

 if(ARCHIVE_OK != (ret = get_archive_read(_a, &ar)))
  return ret;

 rar = malloc(sizeof(*rar));
 if(rar == ((void*)0)) {
  archive_set_error(&ar->archive, ENOMEM,
      "Can't allocate rar5 data");
  return ARCHIVE_FATAL;
 }

 if(ARCHIVE_OK != rar5_init(rar)) {
  archive_set_error(&ar->archive, ENOMEM,
      "Can't allocate rar5 filter buffer");
  return ARCHIVE_FATAL;
 }

 ret = __archive_read_register_format(ar,
     rar,
     "rar5",
     rar5_bid,
     rar5_options,
     rar5_read_header,
     rar5_read_data,
     rar5_read_data_skip,
     rar5_seek_data,
     rar5_cleanup,
     rar5_capabilities,
     rar5_has_encrypted_entries);

 if(ret != ARCHIVE_OK) {
  (void) rar5_cleanup(ar);
 }

 return ret;
}
