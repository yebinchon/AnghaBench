
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uchar_t ;
typedef int objset_t ;
struct TYPE_3__ {int dde_phys; int dde_key; } ;
typedef TYPE_1__ ddt_entry_t ;
typedef int cbuf ;


 int ASSERT (int) ;
 int DDT_KEY_WORDS ;
 int ddt_decompress (int *,int ,int,int) ;
 int zap_length_uint64 (int *,int,int*,int ,int*,int*) ;
 int zap_lookup_uint64 (int *,int,int*,int ,int,int,int *) ;

__attribute__((used)) static int
ddt_zap_lookup(objset_t *os, uint64_t object, ddt_entry_t *dde)
{
 uchar_t cbuf[sizeof (dde->dde_phys) + 1];
 uint64_t one, csize;
 int error;

 error = zap_length_uint64(os, object, (uint64_t *)&dde->dde_key,
     DDT_KEY_WORDS, &one, &csize);
 if (error)
  return (error);

 ASSERT(one == 1);
 ASSERT(csize <= sizeof (cbuf));

 error = zap_lookup_uint64(os, object, (uint64_t *)&dde->dde_key,
     DDT_KEY_WORDS, 1, csize, cbuf);
 if (error)
  return (error);

 ddt_decompress(cbuf, dde->dde_phys, csize, sizeof (dde->dde_phys));

 return (0);
}
