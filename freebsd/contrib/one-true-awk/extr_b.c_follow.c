
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;



 int FINAL ;




 int first (int *) ;
 int * left (int *) ;
 int * parent (int *) ;
 int * right (int *) ;
 int type (int *) ;

void follow(Node *v)
{
 Node *p;

 if (type(v) == FINAL)
  return;
 p = parent(v);
 switch (type(p)) {
 case 128:
 case 130:
  first(v);
  follow(p);
  return;

 case 131:
 case 129:
  follow(p);
  return;

 case 132:
  if (v == left(p)) {
   if (first(right(p)) == 0) {
    follow(p);
    return;
   }
  } else
   follow(p);
  return;
 }
}
