
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; scalar_t__ za_name; int za_num_integers; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int uchar_t ;
typedef int objset_t ;
typedef int ddt_key_t ;
struct TYPE_6__ {int dde_key; int dde_phys; } ;
typedef TYPE_2__ ddt_entry_t ;


 int ASSERT (int) ;
 int DDT_KEY_WORDS ;
 int ddt_decompress (int *,int ,int ,int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_noprefetch (int *,int *,int ) ;
 int zap_cursor_init_serialized (int *,int *,int ,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_cursor_serialize (int *) ;
 int zap_lookup_uint64 (int *,int ,int *,int ,int,int ,int *) ;

__attribute__((used)) static int
ddt_zap_walk(objset_t *os, uint64_t object, ddt_entry_t *dde, uint64_t *walk)
{
 zap_cursor_t zc;
 zap_attribute_t za;
 int error;

 if (*walk == 0) {







  zap_cursor_init_noprefetch(&zc, os, object);
 } else {
  zap_cursor_init_serialized(&zc, os, object, *walk);
 }
 if ((error = zap_cursor_retrieve(&zc, &za)) == 0) {
  uchar_t cbuf[sizeof (dde->dde_phys) + 1];
  uint64_t csize = za.za_num_integers;
  ASSERT(za.za_integer_length == 1);
  error = zap_lookup_uint64(os, object, (uint64_t *)za.za_name,
      DDT_KEY_WORDS, 1, csize, cbuf);
  ASSERT(error == 0);
  if (error == 0) {
   ddt_decompress(cbuf, dde->dde_phys, csize,
       sizeof (dde->dde_phys));
   dde->dde_key = *(ddt_key_t *)za.za_name;
  }
  zap_cursor_advance(&zc);
  *walk = zap_cursor_serialize(&zc);
 }
 zap_cursor_fini(&zc);
 return (error);
}
