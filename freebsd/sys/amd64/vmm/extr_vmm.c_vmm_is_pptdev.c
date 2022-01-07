
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freeenv (char*) ;
 char* kern_getenv (char const*) ;
 int sscanf (char*,char*,int*,int*,int*) ;
 char* strchr (char*,char) ;

bool
vmm_is_pptdev(int bus, int slot, int func)
{
 int b, f, i, n, s;
 char *val, *cp, *cp2;
 bool found;
 const char *names[] = { "pptdevs", "pptdevs2", "pptdevs3", ((void*)0) };


 found = 0;
 for (i = 0; names[i] != ((void*)0) && !found; i++) {
  cp = val = kern_getenv(names[i]);
  while (cp != ((void*)0) && *cp != '\0') {
   if ((cp2 = strchr(cp, ' ')) != ((void*)0))
    *cp2 = '\0';

   n = sscanf(cp, "%d/%d/%d", &b, &s, &f);
   if (n == 3 && bus == b && slot == s && func == f) {
    found = 1;
    break;
   }

   if (cp2 != ((void*)0))
    *cp2++ = ' ';

   cp = cp2;
  }
  freeenv(val);
 }
 return (found);
}
