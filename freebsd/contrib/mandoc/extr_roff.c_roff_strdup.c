
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sz; int p; } ;
struct TYPE_5__ {size_t sz; char const* p; } ;
struct roffkv {TYPE_3__ key; TYPE_2__ val; struct roffkv* next; } ;
struct roff {struct roffkv* xmbtab; TYPE_1__* xtab; } ;
typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
struct TYPE_4__ {char const* p; size_t sz; } ;


 int ESCAPE_ERROR ;
 int assert (int) ;
 int mandoc_escape (char const**,int *,int *) ;
 char* mandoc_realloc (char*,size_t) ;
 char* mandoc_strdup (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,scalar_t__) ;

char *
roff_strdup(const struct roff *r, const char *p)
{
 const struct roffkv *cp;
 char *res;
 const char *pp;
 size_t ssz, sz;
 enum mandoc_esc esc;

 if (((void*)0) == r->xmbtab && ((void*)0) == r->xtab)
  return mandoc_strdup(p);
 else if ('\0' == *p)
  return mandoc_strdup("");
 res = ((void*)0);
 ssz = 0;

 while ('\0' != *p) {
  assert((unsigned int)*p < 128);
  if ('\\' != *p && r->xtab && r->xtab[(unsigned int)*p].p) {
   sz = r->xtab[(int)*p].sz;
   res = mandoc_realloc(res, ssz + sz + 1);
   memcpy(res + ssz, r->xtab[(int)*p].p, sz);
   ssz += sz;
   p++;
   continue;
  } else if ('\\' != *p) {
   res = mandoc_realloc(res, ssz + 2);
   res[ssz++] = *p++;
   continue;
  }


  for (cp = r->xmbtab; cp; cp = cp->next)
   if (0 == strncmp(p, cp->key.p, cp->key.sz))
    break;

  if (((void*)0) != cp) {





   res = mandoc_realloc(res,
       ssz + cp->val.sz + 1);
   memcpy(res + ssz, cp->val.p, cp->val.sz);
   ssz += cp->val.sz;
   p += (int)cp->key.sz;
   continue;
  }







  pp = p++;
  esc = mandoc_escape(&p, ((void*)0), ((void*)0));
  if (ESCAPE_ERROR == esc) {
   sz = strlen(pp);
   res = mandoc_realloc(res, ssz + sz + 1);
   memcpy(res + ssz, pp, sz);
   break;
  }





  sz = (int)(p - pp);
  res = mandoc_realloc(res, ssz + sz + 1);
  memcpy(res + ssz, pp, sz);
  ssz += sz;
 }

 res[(int)ssz] = '\0';
 return res;
}
