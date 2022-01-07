
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (int) ;

__attribute__((used)) static __inline int toupper(int c)
{
    return islower(c) ? c - 'a' + 'A' : c;
}
