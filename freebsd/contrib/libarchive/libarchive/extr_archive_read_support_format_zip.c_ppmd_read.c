
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct zip {int ppmd8_stream_failed; int zipx_ppmd_read_compressed; } ;
struct archive_read {TYPE_1__* format; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct archive_read* a; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_2__ IByteIn ;
typedef int const Byte ;


 int * __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,int) ;

__attribute__((used)) static Byte
ppmd_read(void* p) {

 struct archive_read *a = ((IByteIn*)p)->a;
 struct zip *zip = (struct zip*) a->format->data;
 ssize_t bytes_avail = 0;


 const uint8_t* data = __archive_read_ahead(a, 1, &bytes_avail);
 if(bytes_avail < 1) {
  zip->ppmd8_stream_failed = 1;
  return 0;
 }

 __archive_read_consume(a, 1);


 ++zip->zipx_ppmd_read_compressed;


 return data[0];
}
