
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* initg; } ;
typedef TYPE_2__ _ISO2022EncodingInfo ;
struct TYPE_8__ {int vers; int interm; int final; int type; } ;
typedef TYPE_3__ _ISO2022Charset ;
struct TYPE_6__ {int vers; int interm; int final; int type; } ;


 int _MATCH ;
 int _NOTMATCH ;
 int _PARSEFAIL ;
 scalar_t__ getcs (char const*,TYPE_3__*) ;
 int strchr (char*,char const) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static __inline int
get_initg(_ISO2022EncodingInfo * __restrict ei,
    const char * __restrict token)
{
 _ISO2022Charset cs;

 if (strncmp("INIT", &token[0], 4) ||
     !strchr("0123", token[4]) ||
     token[5] != '=')
  return (_NOTMATCH);

 if (getcs(&token[6], &cs) != 0)
  return (_PARSEFAIL);

 ei->initg[token[4] - '0'].type = cs.type;
 ei->initg[token[4] - '0'].final = cs.final;
 ei->initg[token[4] - '0'].interm = cs.interm;
 ei->initg[token[4] - '0'].vers = cs.vers;

 return (_MATCH);
}
