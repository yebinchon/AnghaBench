
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int the_banana ;


 int memcpy (char*,...) ;

__attribute__((used)) static void
banana(u_char *s, size_t l)
{
 size_t o;
 const u_char the_banana[] = { 'b', 'a', 'n', 'a', 'n', 'a' };

 for (o = 0; o < l; o += sizeof(the_banana)) {
  if (l - o < sizeof(the_banana)) {
   memcpy(s + o, "nanananana", l - o);
   break;
  }
  memcpy(s + o, banana, sizeof(the_banana));
 }
}
