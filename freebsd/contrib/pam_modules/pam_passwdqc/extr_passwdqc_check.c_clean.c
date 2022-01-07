
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int memset (char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void clean(char *dst)
{
 if (dst) {
  memset(dst, 0, strlen(dst));
  free(dst);
 }
}
