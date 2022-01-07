
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* p; } ;
struct TYPE_6__ {char* p; } ;
struct roffkv {TYPE_2__ val; TYPE_1__ key; struct roffkv* next; } ;
struct roff {struct roffkv* rentab; struct roffkv* strtab; TYPE_4__* man; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_10__ {char* name; char const* str; } ;
struct TYPE_8__ {scalar_t__ macroset; } ;
struct TYPE_9__ {TYPE_3__ meta; } ;


 scalar_t__ MACROSET_MAN ;
 scalar_t__ MACROSET_MDOC ;
 int MAN_MAX ;
 int MAN_TH ;
 int MDOC_Dd ;
 int MDOC_MAX ;
 int PREDEFS_MAX ;
 int ROFFDEF_ANY ;
 int ROFFDEF_PRE ;
 int ROFFDEF_REN ;
 int ROFFDEF_STD ;
 int ROFFDEF_UNDEF ;
 int ROFFDEF_USER ;
 TYPE_5__* predefs ;
 char** roff_name ;
 int roff_setstrn (struct roffkv**,char const*,size_t,char*,int ,int ) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static const char *
roff_getstrn(struct roff *r, const char *name, size_t len,
    int *deftype)
{
 const struct roffkv *n;
 int found, i;
 enum roff_tok tok;

 found = 0;
 for (n = r->strtab; n != ((void*)0); n = n->next) {
  if (strncmp(name, n->key.p, len) != 0 ||
      n->key.p[len] != '\0' || n->val.p == ((void*)0))
   continue;
  if (*deftype & ROFFDEF_USER) {
   *deftype = ROFFDEF_USER;
   return n->val.p;
  } else {
   found = 1;
   break;
  }
 }
 for (n = r->rentab; n != ((void*)0); n = n->next) {
  if (strncmp(name, n->key.p, len) != 0 ||
      n->key.p[len] != '\0' || n->val.p == ((void*)0))
   continue;
  if (*deftype & ROFFDEF_REN) {
   *deftype = ROFFDEF_REN;
   return n->val.p;
  } else {
   found = 1;
   break;
  }
 }
 for (i = 0; i < PREDEFS_MAX; i++) {
  if (strncmp(name, predefs[i].name, len) != 0 ||
      predefs[i].name[len] != '\0')
   continue;
  if (*deftype & ROFFDEF_PRE) {
   *deftype = ROFFDEF_PRE;
   return predefs[i].str;
  } else {
   found = 1;
   break;
  }
 }
 if (r->man->meta.macroset != MACROSET_MAN) {
  for (tok = MDOC_Dd; tok < MDOC_MAX; tok++) {
   if (strncmp(name, roff_name[tok], len) != 0 ||
       roff_name[tok][len] != '\0')
    continue;
   if (*deftype & ROFFDEF_STD) {
    *deftype = ROFFDEF_STD;
    return ((void*)0);
   } else {
    found = 1;
    break;
   }
  }
 }
 if (r->man->meta.macroset != MACROSET_MDOC) {
  for (tok = MAN_TH; tok < MAN_MAX; tok++) {
   if (strncmp(name, roff_name[tok], len) != 0 ||
       roff_name[tok][len] != '\0')
    continue;
   if (*deftype & ROFFDEF_STD) {
    *deftype = ROFFDEF_STD;
    return ((void*)0);
   } else {
    found = 1;
    break;
   }
  }
 }

 if (found == 0 && *deftype != ROFFDEF_ANY) {
  if (*deftype & ROFFDEF_REN) {




   *deftype = ROFFDEF_UNDEF;
   return ((void*)0);
  }



  roff_setstrn(&r->strtab, name, len, "", 0, 0);
  roff_setstrn(&r->rentab, name, len, ((void*)0), 0, 0);
 }

 *deftype = 0;
 return ((void*)0);
}
