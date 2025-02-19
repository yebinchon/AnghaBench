
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* recommendsize; TYPE_2__** recommend; } ;
typedef TYPE_1__ _ISO2022EncodingInfo ;
struct TYPE_9__ {unsigned char final; char interm; char vers; int type; } ;
typedef TYPE_2__ _ISO2022Charset ;


 int CS94 ;
 int CS94MULTI ;
 int CS96 ;
 int CS96MULTI ;
 int _MATCH ;
 int _NOTMATCH ;
 int _PARSEFAIL ;
 scalar_t__ getcs (char const*,TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 TYPE_2__* reallocarray (TYPE_2__*,int,int) ;
 int strchr (char*,char const) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static __inline int
get_recommend(_ISO2022EncodingInfo * __restrict ei,
    const char * __restrict token)
{
 _ISO2022Charset cs, *p;
 int i;

 if (!strchr("0123", token[0]) || token[1] != '=')
  return (_NOTMATCH);

 if (getcs(&token[2], &cs) == 0)
  ;
 else if (!strcmp(&token[2], "94")) {
  cs.final = (unsigned char)(token[4]);
  cs.interm = '\0';
  cs.vers = '\0';
  cs.type = CS94;
 } else if (!strcmp(&token[2], "96")) {
  cs.final = (unsigned char)(token[4]);
  cs.interm = '\0';
  cs.vers = '\0';
  cs.type = CS96;
 } else if (!strcmp(&token[2], "94$")) {
  cs.final = (unsigned char)(token[5]);
  cs.interm = '\0';
  cs.vers = '\0';
  cs.type = CS94MULTI;
 } else if (!strcmp(&token[2], "96$")) {
  cs.final = (unsigned char)(token[5]);
  cs.interm = '\0';
  cs.vers = '\0';
  cs.type = CS96MULTI;
 } else
  return (_PARSEFAIL);

 i = token[0] - '0';
 if (!ei->recommend[i])
  ei->recommend[i] = malloc(sizeof(_ISO2022Charset));
 else {
  p = reallocarray(ei->recommend[i], ei->recommendsize[i] + 1,
      sizeof(_ISO2022Charset));
  if (!p)
   return (_PARSEFAIL);
  ei->recommend[i] = p;
 }
 if (!ei->recommend[i])
  return (_PARSEFAIL);
 ei->recommendsize[i]++;

 (ei->recommend[i] + (ei->recommendsize[i] - 1))->final = cs.final;
 (ei->recommend[i] + (ei->recommendsize[i] - 1))->interm = cs.interm;
 (ei->recommend[i] + (ei->recommendsize[i] - 1))->vers = cs.vers;
 (ei->recommend[i] + (ei->recommendsize[i] - 1))->type = cs.type;

 return (_MATCH);
}
