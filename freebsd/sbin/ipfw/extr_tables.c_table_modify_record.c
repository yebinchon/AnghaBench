
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int xi ;
typedef void* uint8_t ;
typedef int uint32_t ;
typedef int tent ;
struct TYPE_22__ {int flags; } ;
struct TYPE_23__ {char* tablename; int result; TYPE_2__ head; int vmask; void* type; } ;
typedef TYPE_3__ ipfw_xtable_info ;
typedef TYPE_3__ ipfw_obj_tentry ;
struct TYPE_21__ {void* type; int name; } ;
struct TYPE_24__ {TYPE_1__ ntlv; } ;
typedef TYPE_5__ ipfw_obj_header ;







 int EX_OSERR ;
 int EX_USAGE ;
 int IPFW_TF_UPDATE ;
 int IP_FW_TABLE_XADD ;
 int IP_FW_TABLE_XDEL ;
 TYPE_3__* calloc (int,int) ;
 int errno ;
 int errx (int ,char*,...) ;
 int free (TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int printf (char*,char*) ;
 char* strerror (int) ;
 int strlcpy (char*,int ,int) ;
 int table_do_create (TYPE_5__*,TYPE_3__*) ;
 int table_do_modify_record (int,TYPE_5__*,TYPE_3__*,int,int) ;
 int table_show_entry (TYPE_3__*,TYPE_3__*) ;
 int tentry_fill_key (TYPE_5__*,TYPE_3__*,char*,int,void**,int *,TYPE_3__*) ;
 int tentry_fill_value (TYPE_5__*,TYPE_3__*,char*,void*,int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
table_modify_record(ipfw_obj_header *oh, int ac, char *av[], int add,
    int quiet, int update, int atomic)
{
 ipfw_obj_tentry *ptent, tent, *tent_buf;
 ipfw_xtable_info xi;
 uint8_t type;
 uint32_t vmask;
 int cmd, count, error, i, ignored;
 char *texterr, *etxt, *px;

 if (ac == 0)
  errx(EX_USAGE, "address required");

 if (add != 0) {
  cmd = IP_FW_TABLE_XADD;
  texterr = "Adding record failed";
 } else {
  cmd = IP_FW_TABLE_XDEL;
  texterr = "Deleting record failed";
 }







 count = (add != 0) ? ac / 2 + 1 : ac;

 if (count <= 1) {

  memset(&tent, 0, sizeof(tent));
  tent_buf = &tent;
 } else {

  if ((tent_buf = calloc(count, sizeof(tent))) == ((void*)0))
   errx(EX_OSERR,
       "Unable to allocate memory for all entries");
 }
 ptent = tent_buf;

 memset(&xi, 0, sizeof(xi));
 count = 0;
 while (ac > 0) {
  tentry_fill_key(oh, ptent, *av, add, &type, &vmask, &xi);




  if (xi.tablename[0] == '\0') {
   xi.type = type;
   xi.vmask = vmask;
   strlcpy(xi.tablename, oh->ntlv.name,
       sizeof(xi.tablename));
   if (quiet == 0)
    warnx("DEPRECATED: inserting data into "
        "non-existent table %s. (auto-created)",
        xi.tablename);
   table_do_create(oh, &xi);
  }

  oh->ntlv.type = type;
  ac--; av++;

  if (add != 0 && ac > 0) {
   tentry_fill_value(oh, ptent, *av, type, vmask);
   ac--; av++;
  }

  if (update != 0)
   ptent->head.flags |= IPFW_TF_UPDATE;

  count++;
  ptent++;
 }

 error = table_do_modify_record(cmd, oh, tent_buf, count, atomic);





 if (error == 0 || (error == 139 && add != 0) ||
     (error == 137 && add == 0)) {
  if (quiet != 0) {
   if (tent_buf != &tent)
    free(tent_buf);
   return;
  }
 }


 ptent = tent_buf;
 for (i = 0; i < count; ptent++, i++) {
  ignored = 0;
  switch (ptent->result) {
  case 135:
   px = "added";
   break;
  case 134:
   px = "deleted";
   break;
  case 128:
   px = "updated";
   break;
  case 130:
   px = "limit";
   ignored = 1;
   break;
  case 133:
   px = "error";
   ignored = 1;
   break;
  case 129:
   px = "notfound";
   ignored = 1;
   break;
  case 132:
   px = "exists";
   ignored = 1;
   break;
  case 131:
   px = "ignored";
   ignored = 1;
   break;
  default:
   px = "unknown";
   ignored = 1;
  }

  if (error != 0 && atomic != 0 && ignored == 0)
   printf("%s(reverted): ", px);
  else
   printf("%s: ", px);

  table_show_entry(&xi, ptent);
 }

 if (tent_buf != &tent)
  free(tent_buf);

 if (error == 0)
  return;

 error = errno;


 switch (error) {
 case 139:
  etxt = "record already exists";
  break;
 case 138:
  etxt = "limit hit";
  break;
 case 136:
  etxt = "table not found";
  break;
 case 137:
  etxt = "record not found";
  break;
 case 140:
  etxt = "table is locked";
  break;
 default:
  etxt = strerror(error);
 }

 errx(EX_OSERR, "%s: %s", texterr, etxt);
}
