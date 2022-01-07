
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _nc_warning (char*) ;
 scalar_t__ onstack ;
 int param ;
 scalar_t__* stack ;
 size_t stackptr ;

__attribute__((used)) static void
pop(void)

{
    if (stackptr == 0) {
 if (onstack == 0)
     _nc_warning("I'm confused");
 else
     onstack = 0;
    } else
 onstack = stack[--stackptr];
    param++;
}
