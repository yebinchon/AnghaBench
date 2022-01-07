
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** challenges; } ;
typedef TYPE_1__ http_auth_challenges_t ;


 int MAX_CHALLENGES ;
 int clean_http_auth_challenge (int *) ;
 int free (int *) ;
 int init_http_auth_challenges (TYPE_1__*) ;

__attribute__((used)) static void
clean_http_auth_challenges(http_auth_challenges_t *cs)
{
 int i;

 for (i = 0; i < MAX_CHALLENGES; i++) {
  if (cs->challenges[i] != ((void*)0)) {
   clean_http_auth_challenge(cs->challenges[i]);
   free(cs->challenges[i]);
  }
 }
 init_http_auth_challenges(cs);
}
