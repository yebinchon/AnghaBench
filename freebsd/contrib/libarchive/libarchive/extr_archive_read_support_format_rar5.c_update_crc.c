
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ stored_crc32; scalar_t__ has_blake2; int b2state; int calculated_crc32; } ;
struct rar5 {TYPE_1__ file; scalar_t__ skip_mode; } ;


 int blake2sp_update (int *,int const*,size_t) ;
 int crc32 (int ,int const*,size_t) ;

__attribute__((used)) static void update_crc(struct rar5* rar, const uint8_t* p, size_t to_read) {
    int verify_crc;

 if(rar->skip_mode) {



  verify_crc = 0;

 } else
  verify_crc = 1;

 if(verify_crc) {


  if(rar->file.stored_crc32 > 0) {
   rar->file.calculated_crc32 =
    crc32(rar->file.calculated_crc32, p, to_read);
  }



  if(rar->file.has_blake2 > 0) {


   (void) blake2sp_update(&rar->file.b2state, p, to_read);
  }
 }
}
