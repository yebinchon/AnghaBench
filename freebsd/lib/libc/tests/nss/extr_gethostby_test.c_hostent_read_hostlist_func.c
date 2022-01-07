
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int * h_name; } ;


 int ATF_REQUIRE (int ) ;
 int __freehostent (struct hostent*) ;
 struct hostent* __gethostbyname2 (char*,int ) ;
 int af_type ;
 int clone_hostent (struct hostent*,struct hostent*) ;
 int hostent_test_correctness (struct hostent*,int *) ;
 int memset (struct hostent*,int ,int) ;
 int printf (char*,...) ;
 int * strdup (char*) ;

__attribute__((used)) static int
hostent_read_hostlist_func(struct hostent *he, char *line)
{
 struct hostent *result;
 int rv;




 result = __gethostbyname2(line, af_type);
 if (result != ((void*)0)) {




  rv = hostent_test_correctness(result, ((void*)0));
  if (rv != 0) {
   __freehostent(result);
   return (rv);
  }

  clone_hostent(he, result);
  __freehostent(result);
 } else {



   memset(he, 0, sizeof(struct hostent));
  he->h_name = strdup(line);
  ATF_REQUIRE(he->h_name != ((void*)0));
 }
 return (0);
}
