
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ofwh_t ;
typedef int ofwcell_t ;


 scalar_t__ ofw (int*) ;
 int printf (char*,char const*) ;
 scalar_t__ stub1 (int*) ;

__attribute__((used)) static ofwh_t
ofw_open(const char *path)
{
 ofwcell_t args[] = {
  (ofwcell_t)"open",
  1,
  1,
  (ofwcell_t)path,
  0
 };

 if ((*ofw)(args)) {
  printf("ofw_open: path=\"%s\"\n", path);
  return (-1);
 }
 return (args[4]);
}
