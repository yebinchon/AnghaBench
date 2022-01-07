
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEP ;
 int SSH_PROTO_2 ;
 int SSH_PROTO_UNKNOWN ;
 int atoi (char*) ;
 int free (char*) ;
 int logit (char*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,int ) ;

int
proto_spec(const char *spec)
{
 char *s, *p, *q;
 int ret = SSH_PROTO_UNKNOWN;

 if (spec == ((void*)0))
  return ret;
 q = s = strdup(spec);
 if (s == ((void*)0))
  return ret;
 for ((p = strsep(&q, SEP)); p && *p != '\0'; (p = strsep(&q, SEP))) {
  switch (atoi(p)) {
  case 2:
   ret |= SSH_PROTO_2;
   break;
  default:
   logit("ignoring bad proto spec: '%s'.", p);
   break;
  }
 }
 free(s);
 return ret;
}
