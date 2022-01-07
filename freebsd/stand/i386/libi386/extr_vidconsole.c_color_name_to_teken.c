
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TC_BLACK ;
 int TC_BLUE ;
 int TC_BROWN ;
 int TC_CYAN ;
 int TC_GREEN ;
 int TC_MAGENTA ;
 int TC_RED ;
 int TC_WHITE ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static bool
color_name_to_teken(const char *name, int *val)
{
 if (strcasecmp(name, "black") == 0) {
  *val = TC_BLACK;
  return (1);
 }
 if (strcasecmp(name, "red") == 0) {
  *val = TC_RED;
  return (1);
 }
 if (strcasecmp(name, "green") == 0) {
  *val = TC_GREEN;
  return (1);
 }
 if (strcasecmp(name, "brown") == 0) {
  *val = TC_BROWN;
  return (1);
 }
 if (strcasecmp(name, "blue") == 0) {
  *val = TC_BLUE;
  return (1);
 }
 if (strcasecmp(name, "magenta") == 0) {
  *val = TC_MAGENTA;
  return (1);
 }
 if (strcasecmp(name, "cyan") == 0) {
  *val = TC_CYAN;
  return (1);
 }
 if (strcasecmp(name, "white") == 0) {
  *val = TC_WHITE;
  return (1);
 }
 return (0);
}
