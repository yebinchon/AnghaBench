
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int personal; } ;
typedef TYPE_1__ blake2b_param ;


 int BLAKE2B_PERSONALBYTES ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static inline int blake2b_param_set_personal( blake2b_param *P, const uint8_t personal[BLAKE2B_PERSONALBYTES] )
{
  memcpy( P->personal, personal, BLAKE2B_PERSONALBYTES );
  return 0;
}
