
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int closeall () ;
 int execute (int *) ;

void run(Node *a)
{
 extern void stdinit(void);

 stdinit();
 execute(a);
 closeall();
}
