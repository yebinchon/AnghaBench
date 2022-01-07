
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int za_name; scalar_t__ za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int EINVAL ;
 int ENOENT ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zap_update (int *,int ,int ,int,int,int *,int *) ;

int
zap_join_increment(objset_t *os, uint64_t fromobj, uint64_t intoobj,
    dmu_tx_t *tx)
{
 zap_cursor_t zc;
 int err = 0;

 zap_attribute_t *za = kmem_alloc(sizeof (*za), KM_SLEEP);
 for (zap_cursor_init(&zc, os, fromobj);
     zap_cursor_retrieve(&zc, za) == 0;
     (void) zap_cursor_advance(&zc)) {
  uint64_t delta = 0;

  if (za->za_integer_length != 8 || za->za_num_integers != 1) {
   err = SET_ERROR(EINVAL);
   break;
  }

  err = zap_lookup(os, intoobj, za->za_name, 8, 1, &delta);
  if (err != 0 && err != ENOENT)
   break;
  delta += za->za_first_integer;
  err = zap_update(os, intoobj, za->za_name, 8, 1, &delta, tx);
  if (err != 0)
   break;
 }
 zap_cursor_fini(&zc);
 kmem_free(za, sizeof (*za));
 return (err);
}
