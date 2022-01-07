
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zap_ismicro; } ;
typedef TYPE_1__ zap_t ;
typedef int zap_name_t ;
typedef int uint64_t ;
typedef int mzap_ent_t ;
typedef int matchtype_t ;
typedef int boolean_t ;
struct TYPE_8__ {int mze_value; int mze_name; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int EOVERFLOW ;
 TYPE_5__* MZE_PHYS (TYPE_1__*,int *) ;
 int SET_ERROR (int ) ;
 int fzap_lookup (int *,int,int,void*,char*,int,int *) ;
 int mzap_normalization_conflict (TYPE_1__*,int *,int *) ;
 int * mze_find (int *) ;
 int strlcpy (char*,int ,int) ;
 int * zap_name_alloc (TYPE_1__*,char const*,int ) ;
 int zap_name_free (int *) ;

__attribute__((used)) static int
zap_lookup_impl(zap_t *zap, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    matchtype_t mt, char *realname, int rn_len,
    boolean_t *ncp)
{
 int err = 0;

 zap_name_t *zn = zap_name_alloc(zap, name, mt);
 if (zn == ((void*)0))
  return (SET_ERROR(ENOTSUP));

 if (!zap->zap_ismicro) {
  err = fzap_lookup(zn, integer_size, num_integers, buf,
      realname, rn_len, ncp);
 } else {
  mzap_ent_t *mze = mze_find(zn);
  if (mze == ((void*)0)) {
   err = SET_ERROR(ENOENT);
  } else {
   if (num_integers < 1) {
    err = SET_ERROR(EOVERFLOW);
   } else if (integer_size != 8) {
    err = SET_ERROR(EINVAL);
   } else {
    *(uint64_t *)buf =
        MZE_PHYS(zap, mze)->mze_value;
    (void) strlcpy(realname,
        MZE_PHYS(zap, mze)->mze_name, rn_len);
    if (ncp) {
     *ncp = mzap_normalization_conflict(zap,
         zn, mze);
    }
   }
  }
 }
 zap_name_free(zn);
 return (err);
}
