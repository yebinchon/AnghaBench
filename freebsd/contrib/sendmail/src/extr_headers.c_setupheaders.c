
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hdrinfo {int hi_flags; int * hi_field; } ;
struct TYPE_4__ {int * hi_ruleset; int hi_flags; } ;
struct TYPE_5__ {TYPE_1__ s_header; } ;
typedef TYPE_2__ STAB ;


 struct hdrinfo* HdrInfo ;
 int ST_ENTER ;
 int ST_HEADER ;
 TYPE_2__* stab (int *,int ,int ) ;

void
setupheaders()
{
 struct hdrinfo *hi;
 STAB *s;

 for (hi = HdrInfo; hi->hi_field != ((void*)0); hi++)
 {
  s = stab(hi->hi_field, ST_HEADER, ST_ENTER);
  s->s_header.hi_flags = hi->hi_flags;
  s->s_header.hi_ruleset = ((void*)0);
 }
}
