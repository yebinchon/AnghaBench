
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {size_t n; char const* buff; int f; } ;
typedef TYPE_1__ LoadF ;


 scalar_t__ feof (int ) ;
 size_t fread (char const*,int,int,int ) ;

__attribute__((used)) static const char *getF (lua_State *L, void *ud, size_t *size) {
  LoadF *lf = (LoadF *)ud;
  (void)L;
  if (lf->n > 0) {
    *size = lf->n;
    lf->n = 0;
  }
  else {



    if (feof(lf->f)) return ((void*)0);
    *size = fread(lf->buff, 1, sizeof(lf->buff), lf->f);
  }
  return lf->buff;
}
