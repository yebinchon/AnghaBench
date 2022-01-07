
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {int dummy; } ;
struct rckey {void* rk_value; } ;
struct rcfile {char* rf_name; int * rf_f; } ;
typedef int buf ;
typedef int FILE ;


 int EOF ;
 int fprintf (int ,char*,char*) ;
 int getc (int *) ;
 scalar_t__ isspace (int) ;
 struct rcsection* rc_addsect (struct rcfile*,char*) ;
 struct rckey* rc_sect_addkey (struct rcsection*,char*,int *) ;
 int stGetKey ;
 int stGetValue ;
 int stHeader ;
 int stNewLine ;
 int stSkipToEOL ;
 int stderr ;
 void* strdup (char*) ;

__attribute__((used)) static void
rc_parse(struct rcfile *rcp)
{
 FILE *f = rcp->rf_f;
 int state = stNewLine, c;
 struct rcsection *rsp = ((void*)0);
 struct rckey *rkp = ((void*)0);
 char buf[2048];
 char *next = buf, *last = &buf[sizeof(buf)-1];

 while ((c = getc (f)) != EOF) {
  if (c == '\r')
   continue;
  if (state == stNewLine) {
   next = buf;
   if (isspace(c))
    continue;
   if (c == '[') {
    state = stHeader;
    rsp = ((void*)0);
    continue;
   }
   if (c == '#' || c == ';') {
    state = stSkipToEOL;
   } else {
    state = stGetKey;
   }
  }
  if (state == stSkipToEOL || next == last) {
   if (c == '\n'){
    state = stNewLine;
    next = buf;
   }
   continue;
  }
  if (state == stHeader) {
   if (c == ']') {
    *next = 0;
    next = buf;
    rsp = rc_addsect(rcp, buf);
    state = stSkipToEOL;
   } else
    *next++ = c;
   continue;
  }
  if (state == stGetKey) {
   if (c == ' ' || c == '\t')
    continue;
   if (c == '\n') {
    state = stNewLine;
    continue;
   }
   if (c != '=') {
    *next++ = c;
    continue;
   }
   *next = 0;
   if (rsp == ((void*)0)) {
    fprintf(stderr, "Key '%s' defined before section\n", buf);
    state = stSkipToEOL;
    continue;
   }
   rkp = rc_sect_addkey(rsp, buf, ((void*)0));
   next = buf;
   state = stGetValue;
   continue;
  }

  if (state != stGetValue) {
   fprintf(stderr, "Well, I can't parse file '%s'\n",rcp->rf_name);
   state = stSkipToEOL;
  }
  if (c != '\n') {
   *next++ = c;
   continue;
  }
  *next = 0;
  rkp->rk_value = strdup(buf);
  state = stNewLine;
  rkp = ((void*)0);
 }
 if (c == EOF && state == stGetValue) {
  *next = 0;
  rkp->rk_value = strdup(buf);
 }
 return;
}
