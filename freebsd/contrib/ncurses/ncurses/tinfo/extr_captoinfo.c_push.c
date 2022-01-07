
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_PUSHED ;
 int _nc_warning (char*) ;
 int onstack ;
 int * stack ;
 scalar_t__ stackptr ;

__attribute__((used)) static void
push(void)

{
    if (stackptr >= MAX_PUSHED)
 _nc_warning("string too complex to convert");
    else
 stack[stackptr++] = onstack;
}
