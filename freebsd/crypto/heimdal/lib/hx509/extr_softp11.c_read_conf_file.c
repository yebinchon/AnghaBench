
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int app_error_fatal; } ;
struct TYPE_4__ {TYPE_1__ flags; int * logfile; } ;
typedef int FILE ;
typedef int CK_USER_TYPE ;
typedef int CK_RV ;


 int CKR_GENERAL_ERROR ;
 int CKR_OK ;
 int add_certificate (char*,char const*,char*,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 void* fopen (char const*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int rk_cloexec_file (int *) ;
 TYPE_2__ soft_token ;
 int st_logf (char*,...) ;
 int * stdout ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static CK_RV
read_conf_file(const char *fn, CK_USER_TYPE userType, const char *pin)
{
    char buf[1024], *type, *s, *p;
    FILE *f;
    CK_RV ret = CKR_OK;
    CK_RV failed = CKR_OK;

    if (fn == ((void*)0)) {
        st_logf("Can't open configuration file.  No file specified\n");
        return CKR_GENERAL_ERROR;
    }

    f = fopen(fn, "r");
    if (f == ((void*)0)) {
 st_logf("can't open configuration file %s\n", fn);
 return CKR_GENERAL_ERROR;
    }
    rk_cloexec_file(f);

    while(fgets(buf, sizeof(buf), f) != ((void*)0)) {
 buf[strcspn(buf, "\n")] = '\0';

 st_logf("line: %s\n", buf);

 p = buf;
 while (isspace((unsigned char)*p))
     p++;
 if (*p == '#')
     continue;
 while (isspace((unsigned char)*p))
     p++;

 s = ((void*)0);
 type = strtok_r(p, "\t", &s);
 if (type == ((void*)0))
     continue;

 if (strcasecmp("certificate", type) == 0) {
     char *cert, *id, *label;

     id = strtok_r(((void*)0), "\t", &s);
     if (id == ((void*)0)) {
  st_logf("no id\n");
  continue;
     }
     st_logf("id: %s\n", id);
     label = strtok_r(((void*)0), "\t", &s);
     if (label == ((void*)0)) {
  st_logf("no label\n");
  continue;
     }
     cert = strtok_r(((void*)0), "\t", &s);
     if (cert == ((void*)0)) {
  st_logf("no certfiicate store\n");
  continue;
     }

     st_logf("adding: %s: %s in file %s\n", id, label, cert);

     ret = add_certificate(cert, pin, id, label);
     if (ret)
  failed = ret;
 } else if (strcasecmp("debug", type) == 0) {
     char *name;

     name = strtok_r(((void*)0), "\t", &s);
     if (name == ((void*)0)) {
  st_logf("no filename\n");
  continue;
     }

     if (soft_token.logfile)
  fclose(soft_token.logfile);

     if (strcasecmp(name, "stdout") == 0)
  soft_token.logfile = stdout;
     else {
  soft_token.logfile = fopen(name, "a");
  if (soft_token.logfile)
      rk_cloexec_file(soft_token.logfile);
     }
     if (soft_token.logfile == ((void*)0))
  st_logf("failed to open file: %s\n", name);

 } else if (strcasecmp("app-fatal", type) == 0) {
     char *name;

     name = strtok_r(((void*)0), "\t", &s);
     if (name == ((void*)0)) {
  st_logf("argument to app-fatal\n");
  continue;
     }

     if (strcmp(name, "true") == 0 || strcmp(name, "on") == 0)
  soft_token.flags.app_error_fatal = 1;
     else if (strcmp(name, "false") == 0 || strcmp(name, "off") == 0)
  soft_token.flags.app_error_fatal = 0;
     else
  st_logf("unknown app-fatal: %s\n", name);

 } else {
     st_logf("unknown type: %s\n", type);
 }
    }

    fclose(f);

    return failed;
}
