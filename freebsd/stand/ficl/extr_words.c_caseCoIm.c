
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int PUSHUNS (int ) ;
 int caseTag ;
 int markControlTag (int *,int ) ;
 int vmCheckStack (int *,int ,int) ;

__attribute__((used)) static void caseCoIm(FICL_VM *pVM)
{




 PUSHUNS(0);
 markControlTag(pVM, caseTag);
    return;
}
