
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char http_header_lex_t ;
struct TYPE_4__ {int valid; size_t count; TYPE_2__** challenges; } ;
typedef TYPE_1__ http_auth_challenges_t ;
typedef int http_auth_challenge_t ;
struct TYPE_5__ {scalar_t__ stale; void* algo; void* opaque; void* nonce; void* qop; void* realm; int scheme; } ;


 int HTTPAS_BASIC ;
 int HTTPAS_DIGEST ;
 int HTTPAS_UNKNOWN ;
 char HTTPHL_END ;
 char HTTPHL_STRING ;
 char HTTPHL_WORD ;
 size_t MAX_CHALLENGES ;
 int fetch_syserr () ;
 int free (char*) ;
 char http_header_lex (char const**,char*) ;
 int init_http_auth_challenge (TYPE_2__*) ;
 void* malloc (int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 void* strdup (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
http_parse_authenticate(const char *cp, http_auth_challenges_t *cs)
{
 int ret = -1;
 http_header_lex_t lex;
 char *key = malloc(strlen(cp) + 1);
 char *value = malloc(strlen(cp) + 1);
 char *buf = malloc(strlen(cp) + 1);

 if (key == ((void*)0) || value == ((void*)0) || buf == ((void*)0)) {
  fetch_syserr();
  goto out;
 }


 cs->valid = 1;


 lex = http_header_lex(&cp, key);
 if (lex != HTTPHL_WORD)
  goto out;


 for (; cs->count < MAX_CHALLENGES; cs->count++) {
  cs->challenges[cs->count] =
   malloc(sizeof(http_auth_challenge_t));
  if (cs->challenges[cs->count] == ((void*)0)) {
   fetch_syserr();
   goto out;
  }
  init_http_auth_challenge(cs->challenges[cs->count]);
  if (strcasecmp(key, "basic") == 0) {
   cs->challenges[cs->count]->scheme = HTTPAS_BASIC;
  } else if (strcasecmp(key, "digest") == 0) {
   cs->challenges[cs->count]->scheme = HTTPAS_DIGEST;
  } else {
   cs->challenges[cs->count]->scheme = HTTPAS_UNKNOWN;






  }


  for (;;) {

   lex = http_header_lex(&cp, key);
   if (lex != HTTPHL_WORD)
    goto out;


   lex = http_header_lex(&cp, buf);
   if (lex != '=')
    goto out;


   lex = http_header_lex(&cp, value);
   if (lex != HTTPHL_WORD && lex != HTTPHL_STRING)
    goto out;

   if (strcasecmp(key, "realm") == 0) {
    cs->challenges[cs->count]->realm =
        strdup(value);
   } else if (strcasecmp(key, "qop") == 0) {
    cs->challenges[cs->count]->qop =
        strdup(value);
   } else if (strcasecmp(key, "nonce") == 0) {
    cs->challenges[cs->count]->nonce =
        strdup(value);
   } else if (strcasecmp(key, "opaque") == 0) {
    cs->challenges[cs->count]->opaque =
        strdup(value);
   } else if (strcasecmp(key, "algorithm") == 0) {
    cs->challenges[cs->count]->algo =
        strdup(value);
   } else if (strcasecmp(key, "stale") == 0) {
    cs->challenges[cs->count]->stale =
        strcasecmp(value, "no");
   } else {

   }


   lex = http_header_lex(&cp, key);




   if (lex == HTTPHL_WORD)
    break;

   if (lex == HTTPHL_END) {

    cs->count++;
    ret = 0;
    goto out;
   }

   if (lex != ',')
    goto out;

  }
 }






out:
 if (key)
  free(key);
 if (value)
  free(value);
 if (buf)
  free(buf);
 return (ret);
}
