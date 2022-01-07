
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int equal; int * arch; int * sec; int * manpath; int * query; } ;
struct req {int isquery; TYPE_1__ q; } ;


 int free (char*) ;
 scalar_t__ http_decode (char*) ;
 char* mandoc_strndup (char const*,size_t) ;
 int set_query_attr (int **,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char const*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
parse_query_string(struct req *req, const char *qs)
{
 char *key, *val;
 size_t keysz, valsz;

 req->isquery = 1;
 req->q.manpath = ((void*)0);
 req->q.arch = ((void*)0);
 req->q.sec = ((void*)0);
 req->q.query = ((void*)0);
 req->q.equal = 1;

 key = val = ((void*)0);
 while (*qs != '\0') {



  keysz = strcspn(qs, "=;&");
  key = mandoc_strndup(qs, keysz);
  qs += keysz;
  if (*qs != '=')
   goto next;



  valsz = strcspn(++qs, ";&");
  val = mandoc_strndup(qs, valsz);
  qs += valsz;



  if ( ! (http_decode(key) && http_decode(val)))
   goto next;



  if ( ! strcmp(key, "query"))
   set_query_attr(&req->q.query, &val);

  else if ( ! strcmp(key, "apropos"))
   req->q.equal = !strcmp(val, "0");

  else if ( ! strcmp(key, "manpath")) {







   set_query_attr(&req->q.manpath, &val);
  }

  else if ( ! (strcmp(key, "sec")



      )) {
   if ( ! strcmp(val, "0"))
    *val = '\0';
   set_query_attr(&req->q.sec, &val);
  }

  else if ( ! strcmp(key, "arch")) {
   if ( ! strcmp(val, "default"))
    *val = '\0';
   set_query_attr(&req->q.arch, &val);
  }






next:
  free(key);
  key = ((void*)0);
  free(val);
  val = ((void*)0);

  if (*qs != '\0')
   qs++;
 }
}
