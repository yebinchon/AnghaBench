
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int CUNK ;
 int INDIRECT ;
 int celltonode (int *,int ) ;
 int * op1 (int ,int ) ;

Node *rectonode(void)
{
 extern Cell *literal0;
 return op1(INDIRECT, celltonode(literal0, CUNK));
}
