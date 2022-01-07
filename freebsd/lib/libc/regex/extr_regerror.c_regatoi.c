
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rerr {scalar_t__ code; int name; } ;
struct TYPE_3__ {int re_endp; } ;
typedef TYPE_1__ regex_t ;


 struct rerr* rerrs ;
 int sprintf (char*,char*,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static const char *
regatoi(const regex_t *preg, char *localbuf)
{
 struct rerr *r;

 for (r = rerrs; r->code != 0; r++)
  if (strcmp(r->name, preg->re_endp) == 0)
   break;
 if (r->code == 0)
  return("0");

 sprintf(localbuf, "%d", r->code);
 return(localbuf);
}
