
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ucl_object_t ;
typedef int curf ;


 int INT16_MAX ;
 int INT32_MAX ;
 int UCL_ARRAY ;
 int UINT16_MAX ;
 int UINT32_MAX ;
 int memcpy (double*,int*,int) ;
 int nelt ;
 int pcg32_random () ;
 int ucl_array_append (int *,int ) ;
 int ucl_object_fromdouble (double) ;
 int ucl_object_fromint (int) ;
 int * ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t*
ucl_test_integer (void)
{
 ucl_object_t *res;
 int count, i;
 uint64_t cur;
 double curf;

 res = ucl_object_typed_new (UCL_ARRAY);
 count = pcg32_random () % nelt;

 for (i = 0; i < count; i ++) {
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  ucl_array_append (res, ucl_object_fromint (cur % 128));
  ucl_array_append (res, ucl_object_fromint (-(cur % 128)));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  ucl_array_append (res, ucl_object_fromint (cur % UINT16_MAX));
  ucl_array_append (res, ucl_object_fromint (-(cur % INT16_MAX)));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  ucl_array_append (res, ucl_object_fromint (cur % UINT32_MAX));
  ucl_array_append (res, ucl_object_fromint (-(cur % INT32_MAX)));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  ucl_array_append (res, ucl_object_fromint (cur));
  ucl_array_append (res, ucl_object_fromint (-cur));

  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  curf = (cur % 128) / 19 * 16;
  ucl_array_append (res, ucl_object_fromdouble (curf));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  curf = -(cur % 128) / 19 * 16;
  ucl_array_append (res, ucl_object_fromdouble (curf));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  curf = (cur % 65536) / 19 * 16;
  ucl_array_append (res, ucl_object_fromdouble (curf));
  ucl_array_append (res, ucl_object_fromdouble (-curf));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  curf = (cur % INT32_MAX) / 19 * 16;
  ucl_array_append (res, ucl_object_fromdouble (curf));
  cur = ((uint64_t)pcg32_random ()) << 32 | pcg32_random ();
  memcpy (&curf, &cur, sizeof (curf));
  ucl_array_append (res, ucl_object_fromint (cur));
 }

 return res;
}
