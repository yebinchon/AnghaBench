
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct zip {int hctx; scalar_t__ hctx_valid; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int AUTH_CODE_SIZE ;
 void* __archive_read_ahead (struct archive_read*,int ,int *) ;
 int __archive_read_consume (struct archive_read*,int ) ;
 int archive_hmac_sha1_final (int *,int *,size_t*) ;
 int archive_set_error (int *,int ,char*) ;
 int memcmp (int *,void const*,int ) ;

__attribute__((used)) static int
check_authentication_code(struct archive_read *a, const void *_p)
{
 struct zip *zip = (struct zip *)(a->format->data);


 if (zip->hctx_valid) {
  const void *p;
  uint8_t hmac[20];
  size_t hmac_len = 20;
  int cmp;

  archive_hmac_sha1_final(&zip->hctx, hmac, &hmac_len);
  if (_p == ((void*)0)) {

   p = __archive_read_ahead(a, AUTH_CODE_SIZE, ((void*)0));
   if (p == ((void*)0)) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_FILE_FORMAT,
        "Truncated ZIP file data");
    return (ARCHIVE_FATAL);
   }
  } else {
   p = _p;
  }
  cmp = memcmp(hmac, p, AUTH_CODE_SIZE);
  __archive_read_consume(a, AUTH_CODE_SIZE);
  if (cmp != 0) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_MISC,
       "ZIP bad Authentication code");
   return (ARCHIVE_WARN);
  }
 }
 return (ARCHIVE_OK);
}
