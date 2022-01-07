
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bn; } ;
typedef TYPE_1__ MINT ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_dec2bn (int **,char const*) ;
 int * BN_new () ;
 int MPERR (char*) ;
 int _bnerr (char const*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static MINT *
_dtom(const char *msg, const char *s)
{
 MINT *mp;

 mp = malloc(sizeof(*mp));
 if (mp == ((void*)0))
  MPERR(("%s", msg));
 mp->bn = BN_new();
 if (mp->bn == ((void*)0))
  _bnerr(msg);
 BN_ERRCHECK(msg, BN_dec2bn(&mp->bn, s));
 return (mp);
}
