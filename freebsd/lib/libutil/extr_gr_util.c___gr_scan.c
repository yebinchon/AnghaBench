
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; char* gr_passwd; char** gr_mem; int gr_gid; } ;


 char** reallocf (char**,int) ;
 int sscanf (char*,char*,int *) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static bool
__gr_scan(char *line, struct group *gr)
{
 char *loc;
 int ndx;


 gr->gr_name = line;
 if ((loc = strchr(line, ':')) == ((void*)0))
  return (0);
 *loc = '\0';
 gr->gr_passwd = loc + 1;
 if (*gr->gr_passwd == ':')
  *gr->gr_passwd = '\0';
 else {
  if ((loc = strchr(loc + 1, ':')) == ((void*)0))
   return (0);
  *loc = '\0';
 }
 if (sscanf(loc + 1, "%u", &gr->gr_gid) != 1)
  return (0);


 if ((loc = strchr(loc + 1, ':')) == ((void*)0))
  return (0);
 line = loc + 1;
 gr->gr_mem = ((void*)0);
 ndx = 0;
 do {
  gr->gr_mem = reallocf(gr->gr_mem, sizeof(*gr->gr_mem) *
      (ndx + 1));
  if (gr->gr_mem == ((void*)0))
   return (0);


  do {
   gr->gr_mem[ndx] = strsep(&line, ",");
  } while (gr->gr_mem[ndx] != ((void*)0) && *gr->gr_mem[ndx] == '\0');
 } while (gr->gr_mem[ndx++] != ((void*)0));

 return (1);
}
