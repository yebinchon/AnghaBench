
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int buf ;


 int GV_CFG_LEN ;




 char* find_pattern (char*,char*) ;
 int free (char*) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char*) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 char* malloc (int) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char const*,int) ;
 int strcmp (char*,char const*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static char *
find_name(const char *prefix, int type, int namelen)
{
 struct gctl_req *req;
 char comment[1], buf[GV_CFG_LEN - 1], *sname, *ptr;
 const char *errstr, *name;
 int i, n, begin, len, conflict;
 char line[1024];

 comment[0] = '\0';


 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "getconfig");
 gctl_ro_param(req, "comment", -1, comment);
 gctl_rw_param(req, "config", sizeof(buf), buf);
 errstr = gctl_issue(req);
 if (errstr != ((void*)0)) {
  warnx("can't get configuration: %s", errstr);
  return (((void*)0));
 }
 gctl_free(req);

 begin = 0;
 len = strlen(buf);
 i = 0;
 sname = malloc(namelen + 1);


 for (n = 0; n < 10000; n++) {
  snprintf(sname, namelen, "%s%d", prefix, n);
  conflict = 0;
  begin = 0;

  for (i = 0; i < len; i++) {
   if (buf[i] == '\n' || buf[i] == '\0') {
    ptr = buf + begin;
    strlcpy(line, ptr, (i - begin) + 1);
    begin = i + 1;
    switch (type) {
    case 131:
     name = find_pattern(line, "drive");
     break;
    case 128:
     name = find_pattern(line, "volume");
     break;
    case 130:
    case 129:
     name = find_pattern(line, "name");
     break;
    default:
     printf("Invalid type given\n");
     continue;
    }
    if (name == ((void*)0))
     continue;
    if (!strcmp(sname, name)) {
     conflict = 1;

    }
   }
  }
  if (!conflict)
   return (sname);
 }
 free(sname);
 return (((void*)0));
}
