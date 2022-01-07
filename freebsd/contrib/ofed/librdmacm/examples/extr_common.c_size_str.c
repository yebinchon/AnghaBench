
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,long long,char,...) ;

void size_str(char *str, size_t ssize, long long size)
{
 long long base, fraction = 0;
 char mag;

 if (size >= (1 << 30)) {
  base = 1 << 30;
  mag = 'g';
 } else if (size >= (1 << 20)) {
  base = 1 << 20;
  mag = 'm';
 } else if (size >= (1 << 10)) {
  base = 1 << 10;
  mag = 'k';
 } else {
  base = 1;
  mag = '\0';
 }

 if (size / base < 10)
  fraction = (size % base) * 10 / base;
 if (fraction) {
  snprintf(str, ssize, "%lld.%lld%c", size / base, fraction, mag);
 } else {
  snprintf(str, ssize, "%lld%c", size / base, mag);
 }
}
