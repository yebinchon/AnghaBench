
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int environment ;


 char EVUTIL_TOUPPER_ (char) ;
 int * evutil_getenv_ (char*) ;
 int evutil_snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
event_is_method_disabled(const char *name)
{
 char environment[64];
 int i;

 evutil_snprintf(environment, sizeof(environment), "EVENT_NO%s", name);
 for (i = 8; environment[i] != '\0'; ++i)
  environment[i] = EVUTIL_TOUPPER_(environment[i]);


 return (evutil_getenv_(environment) != ((void*)0));
}
