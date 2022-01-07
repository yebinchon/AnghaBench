
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char jsmntok_t ;
struct TYPE_4__ {int toknext; } ;
typedef TYPE_1__ jsmn_parser ;
typedef int buf ;


 int BUFSIZ ;
 int JSMN_ERROR_NOMEM ;
 int dump (char*,char*,int ,int ) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int fread (char*,int,int,int ) ;
 int jsmn_init (TYPE_1__*) ;
 int jsmn_parse (TYPE_1__*,char*,size_t,char*,size_t) ;
 char* malloc (int) ;
 char* realloc (char*,int) ;
 int stderr ;
 int stdin ;
 int strncpy (char*,char*,int) ;

int main() {
 int r;
 int eof_expected = 0;
 char *js = ((void*)0);
 size_t jslen = 0;
 char buf[BUFSIZ];

 jsmn_parser p;
 jsmntok_t *tok;
 size_t tokcount = 2;


 jsmn_init(&p);


 tok = malloc(sizeof(*tok) * tokcount);
 if (tok == ((void*)0)) {
  fprintf(stderr, "malloc(): errno=%d\n", errno);
  return 3;
 }

 for (;;) {

  r = fread(buf, 1, sizeof(buf), stdin);
  if (r < 0) {
   fprintf(stderr, "fread(): %d, errno=%d\n", r, errno);
   return 1;
  }
  if (r == 0) {
   if (eof_expected != 0) {
    return 0;
   } else {
    fprintf(stderr, "fread(): unexpected EOF\n");
    return 2;
   }
  }

  js = realloc(js, jslen + r + 1);
  if (js == ((void*)0)) {
   fprintf(stderr, "realloc(): errno=%d\n", errno);
   return 3;
  }
  strncpy(js + jslen, buf, r);
  jslen = jslen + r;

again:
  r = jsmn_parse(&p, js, jslen, tok, tokcount);
  if (r < 0) {
   if (r == JSMN_ERROR_NOMEM) {
    tokcount = tokcount * 2;
    tok = realloc(tok, sizeof(*tok) * tokcount);
    if (tok == ((void*)0)) {
     fprintf(stderr, "realloc(): errno=%d\n", errno);
     return 3;
    }
    goto again;
   }
  } else {
   dump(js, tok, p.toknext, 0);
   eof_expected = 1;
  }
 }

 return 0;
}
