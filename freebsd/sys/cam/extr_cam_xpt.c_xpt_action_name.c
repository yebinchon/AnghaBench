
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kv {char const* name; int v; } ;
typedef int buffer ;


 struct kv* map ;
 int snprintf (char*,int,char*,int) ;

const char *
xpt_action_name(uint32_t action)
{
 static char buffer[32];
 struct kv *walker = map;

 while (walker->name != ((void*)0)) {
  if (walker->v == action)
   return (walker->name);
  walker++;
 }

 snprintf(buffer, sizeof(buffer), "%#x", action);
 return (buffer);
}
