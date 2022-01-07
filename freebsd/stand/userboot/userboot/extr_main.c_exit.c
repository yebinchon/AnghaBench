
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALLBACK (void (*) (int),int) ;
 int jb ;
 int longjmp (int ,int) ;

void
exit(int v)
{

 CALLBACK(exit, v);
 longjmp(jb, 1);
}
