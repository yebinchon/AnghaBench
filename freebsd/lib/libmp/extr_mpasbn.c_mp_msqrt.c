
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const MINT ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int _bnerr (char*) ;
 int const* _itom (char*,int) ;
 int _madd (char*,int const*,int const*,int const*) ;
 int _mcmpa (char*,int const*,int const*) ;
 int _mdiv (char*,int const*,int const*,int const*,int const*,int *) ;
 int _mfree (char*,int const*) ;
 int _movem (char*,int const*,int const*) ;
 int _msub (char*,int const*,int const*,int const*) ;
 int _mult (char*,int const*,int const*,int const*,int *) ;
 int _sdiv (char*,int const*,int,int const*,short*,int *) ;

void
mp_msqrt(const MINT *nmp, MINT *xmp, MINT *rmp)
{
 BN_CTX *c;
 MINT *tolerance;
 MINT *ox, *x;
 MINT *z1, *z2, *z3;
 short i;

 c = BN_CTX_new();
 if (c == ((void*)0))
  _bnerr("msqrt");
 tolerance = _itom("msqrt", 1);
 x = _itom("msqrt", 1);
 ox = _itom("msqrt", 0);
 z1 = _itom("msqrt", 0);
 z2 = _itom("msqrt", 0);
 z3 = _itom("msqrt", 0);
 do {
  _movem("msqrt", x, ox);
  _mdiv("msqrt", nmp, x, z1, z2, c);
  _madd("msqrt", x, z1, z2);
  _sdiv("msqrt", z2, 2, x, &i, c);
  _msub("msqrt", ox, x, z3);
 } while (_mcmpa("msqrt", z3, tolerance) == 1);
 _movem("msqrt", x, xmp);
 _mult("msqrt", x, x, z1, c);
 _msub("msqrt", nmp, z1, z2);
 _movem("msqrt", z2, rmp);
 _mfree("msqrt", tolerance);
 _mfree("msqrt", ox);
 _mfree("msqrt", x);
 _mfree("msqrt", z1);
 _mfree("msqrt", z2);
 _mfree("msqrt", z3);
 BN_CTX_free(c);
}
