
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (int) ;

__attribute__((used)) static __inline int tolower(int c)
{
    return isupper(c) ? c - 'A' + 'a' : c;
}
