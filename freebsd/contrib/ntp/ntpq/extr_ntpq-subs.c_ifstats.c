
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
struct parse {int dummy; } ;
struct TYPE_5__ {char* name; scalar_t__ uptime; scalar_t__ send_errors; scalar_t__ sent; scalar_t__ ttl; scalar_t__ received; scalar_t__ peer_count; scalar_t__ mcast_count; scalar_t__ flags; scalar_t__ enabled; int bcast; int addr; } ;
typedef TYPE_1__ ifstats_row ;
typedef int FILE ;


 int CTL_OP_READ_ORDLIST_A ;
 int FALSE ;
 int IFSTATS_FIELDS ;
 int INSIST (int) ;
 int TRUE ;
 int ZERO (TYPE_1__) ;
 int another_ifstats_field (int*,TYPE_1__*,int *) ;
 int debug ;
 int decodenetnum (char*,int *) ;
 int doquery (int ,int ,int,int ,int *,int *,size_t*,char const**) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ nextvar (size_t*,char const**,char**,char**) ;
 int sscanf (char*,char const*,scalar_t__*) ;
 int stderr ;
 size_t strlen (char*) ;
 int validate_ifnum (int *,scalar_t__,int*,TYPE_1__*) ;

__attribute__((used)) static void
ifstats(
 struct parse * pcmd,
 FILE * fp
 )
{
 const char addr_fmt[] = "addr.%u";
 const char bcast_fmt[] = "bcast.%u";
 const char en_fmt[] = "en.%u";
 const char flags_fmt[] = "flags.%u";
 const char mc_fmt[] = "mc.%u";
 const char name_fmt[] = "name.%u";
 const char pc_fmt[] = "pc.%u";
 const char rx_fmt[] = "rx.%u";
 const char tl_fmt[] = "tl.%u";
 const char tx_fmt[] = "tx.%u";
 const char txerr_fmt[] = "txerr.%u";
 const char up_fmt[] = "up.%u";
 const char * datap;
 int qres;
 size_t dsize;
 u_short rstatus;
 char * tag;
 char * val;
 int fields;
 u_int ui;
 ifstats_row row;
 int comprende;
 size_t len;

 qres = doquery(CTL_OP_READ_ORDLIST_A, 0, TRUE, 0, ((void*)0), &rstatus,
         &dsize, &datap);
 if (qres)
  return;

 fprintf(fp,
  "    interface name                                        send\n"
  " #  address/broadcast     drop flag ttl mc received sent failed peers   uptime\n"
  "==============================================================================\n");


 ZERO(row);
 fields = 0;
 ui = 0;
 while (nextvar(&dsize, &datap, &tag, &val)) {
  INSIST(tag && val);
  if (debug > 1)
      fprintf(stderr, "nextvar gave: %s = %s\n", tag, val);
  comprende = FALSE;
  switch(tag[0]) {

  case 'a':
   if (1 == sscanf(tag, addr_fmt, &ui) &&
       decodenetnum(val, &row.addr))
    comprende = TRUE;
   break;

  case 'b':
   if (1 == sscanf(tag, bcast_fmt, &ui) &&
       ('\0' == *val ||
        decodenetnum(val, &row.bcast)))
    comprende = TRUE;
   break;

  case 'e':
   if (1 == sscanf(tag, en_fmt, &ui) &&
       1 == sscanf(val, "%d", &row.enabled))
    comprende = TRUE;
   break;

  case 'f':
   if (1 == sscanf(tag, flags_fmt, &ui) &&
       1 == sscanf(val, "0x%x", &row.flags))
    comprende = TRUE;
   break;

  case 'm':
   if (1 == sscanf(tag, mc_fmt, &ui) &&
       1 == sscanf(val, "%u", &row.mcast_count))
    comprende = TRUE;
   break;

  case 'n':
   if (1 == sscanf(tag, name_fmt, &ui)) {

    len = strlen(val);
    if (len >= 2 &&
        len - 2 < sizeof(row.name)) {
     len -= 2;
     memcpy(row.name, val + 1, len);
     row.name[len] = '\0';
     comprende = TRUE;
    }
   }
   break;

  case 'p':
   if (1 == sscanf(tag, pc_fmt, &ui) &&
       1 == sscanf(val, "%u", &row.peer_count))
    comprende = TRUE;
   break;

  case 'r':
   if (1 == sscanf(tag, rx_fmt, &ui) &&
       1 == sscanf(val, "%u", &row.received))
    comprende = TRUE;
   break;

  case 't':
   if (1 == sscanf(tag, tl_fmt, &ui) &&
       1 == sscanf(val, "%u", &row.ttl))
    comprende = TRUE;
   else if (1 == sscanf(tag, tx_fmt, &ui) &&
     1 == sscanf(val, "%u", &row.sent))
    comprende = TRUE;
   else if (1 == sscanf(tag, txerr_fmt, &ui) &&
     1 == sscanf(val, "%u", &row.send_errors))
    comprende = TRUE;
   break;

  case 'u':
   if (1 == sscanf(tag, up_fmt, &ui) &&
       1 == sscanf(val, "%u", &row.uptime))
    comprende = TRUE;
   break;
  }

  if (comprende) {

   validate_ifnum(fp, ui, &fields, &row);

   another_ifstats_field(&fields, &row, fp);
  }
 }
 if (fields != IFSTATS_FIELDS)
  fprintf(fp, "Warning: incomplete row with %d (of %d) fields\n",
   fields, IFSTATS_FIELDS);

 fflush(fp);
}
