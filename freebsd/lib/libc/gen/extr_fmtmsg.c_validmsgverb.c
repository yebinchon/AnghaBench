
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 char* nextcomp (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
validmsgverb(const char *msgverb)
{
 const char *validlist = "label\0severity\0text\0action\0tag\0";
 char *msgcomp;
 size_t len1, len2;
 const char *p;
 int equality;

 equality = 0;
 while ((msgcomp = nextcomp(msgverb)) != ((void*)0)) {
  equality--;
  len1 = strlen(msgcomp);
  for (p = validlist; (len2 = strlen(p)) != 0; p += len2 + 1) {
   if (len1 == len2 && memcmp(msgcomp, p, len1) == 0)
    equality++;
  }
 }
 return (!equality);
}
