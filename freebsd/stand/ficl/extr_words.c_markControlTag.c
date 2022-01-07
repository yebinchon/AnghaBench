
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int PUSHPTR (char*) ;

__attribute__((used)) static void markControlTag(FICL_VM *pVM, char *tag)
{
    PUSHPTR(tag);
    return;
}
