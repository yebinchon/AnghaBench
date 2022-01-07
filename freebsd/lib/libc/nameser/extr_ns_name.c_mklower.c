
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
mklower(int ch) {
 if (ch >= 0x41 && ch <= 0x5A)
  return (ch + 0x20);
 return (ch);
}
