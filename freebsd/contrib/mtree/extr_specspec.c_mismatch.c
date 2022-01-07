
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NODE ;


 int keys ;
 int printf (char*) ;
 int shownode (int *,int,char const*) ;

__attribute__((used)) static int
mismatch(NODE *n1, NODE *n2, int differ, char const *path)
{

 if (n2 == ((void*)0)) {
  shownode(n1, differ, path);
  return (1);
 }
 if (n1 == ((void*)0)) {
  printf("\t");
  shownode(n2, differ, path);
  return (1);
 }
 if (!(differ & keys))
  return(0);
 printf("\t\t");
 shownode(n1, differ, path);
 printf("\t\t");
 shownode(n2, differ, path);
 return (1);
}
