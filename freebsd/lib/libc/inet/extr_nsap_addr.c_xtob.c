
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
xtob(int c) {
 return (c - (((c >= '0') && (c <= '9')) ? '0' : '7'));
}
