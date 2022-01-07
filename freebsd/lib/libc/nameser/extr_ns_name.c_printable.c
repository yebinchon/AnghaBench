
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
printable(int ch) {
 return (ch > 0x20 && ch < 0x7f);
}
