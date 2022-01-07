
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct archive_read {int dummy; } ;


 int memcmp (int ,int const*,int ) ;
 int rar5_signature ;
 int rar5_signature_size ;
 int read_ahead (struct archive_read*,int ,int const**) ;

__attribute__((used)) static int bid_standard(struct archive_read* a) {
 const uint8_t* p;

 if(!read_ahead(a, rar5_signature_size, &p))
  return -1;

 if(!memcmp(rar5_signature, p, rar5_signature_size))
  return 30;

 return -1;
}
