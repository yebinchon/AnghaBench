
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_div (int *,int *,int ,int ,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int MPERR (char*) ;
 int _bnerr (char const*) ;
 TYPE_1__* _itom (char const*,short) ;
 int _mfree (char const*,TYPE_1__*) ;
 int _moveb (char const*,int *,TYPE_1__*) ;
 char* _mtox (char const*,TYPE_1__*) ;
 scalar_t__ errno ;
 int free (char*) ;
 short strtol (char*,int *,int) ;

__attribute__((used)) static void
_sdiv(const char *msg, const MINT *nmp, short d, MINT *qmp, short *ro,
    BN_CTX *c)
{
 MINT *dmp, *rmp;
 BIGNUM *q, *r;
 char *s;

 r = ((void*)0);
 q = BN_new();
 if (q != ((void*)0))
  r = BN_new();
 if (q == ((void*)0) || r == ((void*)0))
  _bnerr(msg);
 dmp = _itom(msg, d);
 rmp = _itom(msg, 0);
 BN_ERRCHECK(msg, BN_div(q, r, nmp->bn, dmp->bn, c));
 _moveb(msg, q, qmp);
 _moveb(msg, r, rmp);
 s = _mtox(msg, rmp);
 errno = 0;
 *ro = strtol(s, ((void*)0), 16);
 if (errno != 0)
  MPERR(("%s underflow or overflow", msg));
 free(s);
 _mfree(msg, dmp);
 _mfree(msg, rmp);
 BN_free(r);
 BN_free(q);
}
