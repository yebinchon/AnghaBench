
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ valid; scalar_t__ count; int ** challenges; } ;
typedef TYPE_1__ http_auth_challenges_t ;


 int MAX_CHALLENGES ;

__attribute__((used)) static void
init_http_auth_challenges(http_auth_challenges_t *cs)
{
 int i;
 for (i = 0; i < MAX_CHALLENGES; i++)
  cs->challenges[i] = ((void*)0);
 cs->count = cs->valid = 0;
}
