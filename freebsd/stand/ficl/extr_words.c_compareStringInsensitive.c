
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int TRUE ;
 int compareInternal (int *,int ) ;

__attribute__((used)) static void compareStringInsensitive(FICL_VM *pVM)
{
 compareInternal(pVM, TRUE);
}
