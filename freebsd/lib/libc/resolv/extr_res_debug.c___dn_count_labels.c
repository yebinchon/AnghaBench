
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

int
dn_count_labels(const char *name) {
 int i, len, count;

 len = strlen(name);
 for (i = 0, count = 0; i < len; i++) {

  if (name[i] == '.')
   count++;
 }


 if (name[0] == '*')
  if (count)
   count--;




 if (len > 0 && name[len-1] != '.')
  count++;
 return (count);
}
