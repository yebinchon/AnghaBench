
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffreq {int tok; } ;
struct ohash {int dummy; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;


 int TOKEN_NONE ;
 struct roffreq* ohash_find (struct ohash*,int ) ;
 int ohash_qlookup (struct ohash*,char const*) ;
 int ohash_qlookupi (struct ohash*,char const*,char const**) ;

enum roff_tok
roffhash_find(struct ohash *htab, const char *name, size_t sz)
{
 struct roffreq *req;
 const char *end;

 if (sz) {
  end = name + sz;
  req = ohash_find(htab, ohash_qlookupi(htab, name, &end));
 } else
  req = ohash_find(htab, ohash_qlookup(htab, name));
 return req == ((void*)0) ? TOKEN_NONE : req->tok;
}
