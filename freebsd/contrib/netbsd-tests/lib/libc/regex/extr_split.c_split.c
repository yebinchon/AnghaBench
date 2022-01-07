
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
split(char *string, char *fields[], int nfields, const char *sep)
{
 char *p = string;
 char c;
 char sepc = *sep;
 char sepc2;
 int fn;
 char **fp = fields;
 const char *sepp;
 int trimtrail;


 if (sepc == '\0') {
  while ((c = *p++) == ' ' || c == '\t')
   continue;
  p--;
  trimtrail = 1;
  sep = " \t";
  sepc = ' ';
 } else
  trimtrail = 0;
 sepc2 = sep[1];


 if (*p == '\0')
  return(0);


 if (sepc2 == '\0') {
  fn = nfields;
  for (;;) {
   *fp++ = p;
   fn--;
   if (fn == 0)
    break;
   while ((c = *p++) != sepc)
    if (c == '\0')
     return(nfields - fn);
   *(p-1) = '\0';
  }

  fn = nfields;
  for (;;) {
   while ((c = *p++) != sepc)
    if (c == '\0')
     return(fn);
   fn++;
  }

 }


 if (sep[2] == '\0') {
  fn = nfields;
  for (;;) {
   *fp++ = p;
   fn--;
   while ((c = *p++) != sepc && c != sepc2)
    if (c == '\0') {
     if (trimtrail && **(fp-1) == '\0')
      fn++;
     return(nfields - fn);
    }
   if (fn == 0)
    break;
   *(p-1) = '\0';
   while ((c = *p++) == sepc || c == sepc2)
    continue;
   p--;
  }

  fn = nfields;
  while (c != '\0') {
   while ((c = *p++) == sepc || c == sepc2)
    continue;
   p--;
   fn++;
   while ((c = *p++) != '\0' && c != sepc && c != sepc2)
    continue;
  }

  if (trimtrail) {
   p--;
   while ((c = *--p) == sepc || c == sepc2)
    continue;
   p++;
   if (*p != '\0') {
    if (fn == nfields+1)
     *p = '\0';
    fn--;
   }
  }
  return(fn);
 }


 fn = 0;
 for (;;) {
  if (fn < nfields)
   *fp++ = p;
  fn++;
  for (;;) {
   c = *p++;
   if (c == '\0')
    return(fn);
   sepp = sep;
   while ((sepc = *sepp++) != '\0' && sepc != c)
    continue;
   if (sepc != '\0')
    break;
  }
  if (fn < nfields)
   *(p-1) = '\0';
  for (;;) {
   c = *p++;
   sepp = sep;
   while ((sepc = *sepp++) != '\0' && sepc != c)
    continue;
   if (sepc == '\0')
    break;
  }
  p--;
 }


}
