
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xi ;
typedef scalar_t__ uint32_t ;
typedef int tbuf ;
struct TYPE_5__ {scalar_t__ limit; int type; scalar_t__ tflags; scalar_t__ vmask; char* algoname; scalar_t__ flags; } ;
typedef TYPE_1__ ipfw_xtable_info ;
typedef int ipfw_obj_header ;


 scalar_t__ EEXIST ;
 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_USAGE ;
 scalar_t__ IPFW_TABLE_ADDR ;
 scalar_t__ IPFW_TGFLAGS_LOCKED ;
 scalar_t__ IPFW_VTYPE_LEGACY ;
 int NEED1 (char*) ;







 int concat_tokens (char*,int,int ,char*) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 int fill_flags (int ,char*,char**,scalar_t__*,scalar_t__*) ;
 int get_token (int ,char*,char*) ;
 int match_token (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strtol (char*,int *,int) ;
 int table_do_create (int *,TYPE_1__*) ;
 scalar_t__ table_flush (int *) ;
 scalar_t__ table_get_info (int *,TYPE_1__*) ;
 int table_parse_type (int,char*,scalar_t__*) ;
 int tablenewcmds ;
 int tabletypes ;
 int tablevaltypes ;

__attribute__((used)) static void
table_create(ipfw_obj_header *oh, int ac, char *av[])
{
 ipfw_xtable_info xi, xie;
 int error, missing, orflush, tcmd, val;
 uint32_t fset, fclear;
 char *e, *p;
 char tbuf[128];

 missing = orflush = 0;
 memset(&xi, 0, sizeof(xi));
 while (ac > 0) {
  tcmd = get_token(tablenewcmds, *av, "option");
  ac--; av++;

  switch (tcmd) {
  case 133:
   NEED1("limit value required");
   xi.limit = strtol(*av, ((void*)0), 10);
   ac--; av++;
   break;
  case 129:
   NEED1("table type required");

   if ((p = strchr(*av, ':')) != ((void*)0))
    *p++ = '\0';
   val = match_token(tabletypes, *av);
   if (val == -1) {
    concat_tokens(tbuf, sizeof(tbuf), tabletypes,
        ", ");
    errx(EX_USAGE,
        "Unknown tabletype: %s. Supported: %s",
        *av, tbuf);
   }
   xi.type = val;
   if (p != ((void*)0)) {
    error = table_parse_type(val, p, &xi.tflags);
    if (error != 0)
     errx(EX_USAGE,
         "Unsupported suboptions: %s", p);
   }
   ac--; av++;
   break;
  case 128:
   NEED1("table value type required");
   fset = fclear = 0;
   val = fill_flags(tablevaltypes, *av, &e, &fset, &fclear);
   if (val != -1) {
    xi.vmask = fset;
    ac--; av++;
    break;
   }
   concat_tokens(tbuf, sizeof(tbuf), tablevaltypes, ", ");
   errx(EX_USAGE, "Unknown value type: %s. Supported: %s",
       e, tbuf);
   break;
  case 134:
   NEED1("table algorithm name required");
   if (strlen(*av) > sizeof(xi.algoname))
    errx(EX_USAGE, "algorithm name too long");
   strlcpy(xi.algoname, *av, sizeof(xi.algoname));
   ac--; av++;
   break;
  case 132:
   xi.flags |= IPFW_TGFLAGS_LOCKED;
   break;
  case 130:
   orflush = 1;

  case 131:
   missing = 1;
   break;
  }
 }


 if (xi.algoname[0] == '\0' && xi.type == 0)
  xi.type = IPFW_TABLE_ADDR;
 if (xi.vmask == 0)
  xi.vmask = IPFW_VTYPE_LEGACY;

 error = table_do_create(oh, &xi);

 if (error == 0)
  return;

 if (errno != EEXIST || missing == 0)
  err(EX_OSERR, "Table creation failed");


 if (table_get_info(oh, &xie) != 0)
  err(EX_OSERR, "Existing table check failed");

 if (xi.limit != xie.limit || xi.type != xie.type ||
     xi.tflags != xie.tflags || xi.vmask != xie.vmask || (
     xi.algoname[0] != '\0' && strcmp(xi.algoname,
     xie.algoname) != 0) || xi.flags != xie.flags)
  errx(EX_DATAERR, "The existing table is not compatible "
      "with one you are creating.");


 if (orflush != 0 && table_flush(oh) != 0)
  err(EX_OSERR, "Table flush on creation failed");
}
