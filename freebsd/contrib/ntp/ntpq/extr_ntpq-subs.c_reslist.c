
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
struct parse {int dummy; } ;
struct TYPE_5__ {char* flagstr; int mask; scalar_t__ hits; int addr; } ;
typedef TYPE_1__ reslist_row ;
typedef int FILE ;


 int COUNTOF (char const*) ;
 int CTL_OP_READ_ORDLIST_A ;
 int FALSE ;
 int INSIST (int) ;
 int RESLIST_FIELDS ;
 int TRUE ;
 int ZERO (TYPE_1__) ;
 int another_reslist_field (int*,TYPE_1__*,int *) ;
 int debug ;
 int decodenetnum (char*,int *) ;
 int doquery (int ,int ,int,int const,char const*,int *,size_t*,char const**) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ nextvar (size_t*,char const**,char**,char**) ;
 int sscanf (char*,char const*,scalar_t__*) ;
 int stderr ;
 size_t strlen (char*) ;
 int validate_reslist_idx (int *,scalar_t__,int*,TYPE_1__*) ;

__attribute__((used)) static void
reslist(
 struct parse * pcmd,
 FILE * fp
 )
{
 const char addr_fmtu[] = "addr.%u";
 const char mask_fmtu[] = "mask.%u";
 const char hits_fmt[] = "hits.%u";
 const char flags_fmt[] = "flags.%u";
 const char qdata[] = "addr_restrictions";
 const int qdata_chars = COUNTOF(qdata) - 1;
 const char * datap;
 int qres;
 size_t dsize;
 u_short rstatus;
 char * tag;
 char * val;
 int fields;
 u_int ui;
 reslist_row row;
 int comprende;
 size_t len;

 qres = doquery(CTL_OP_READ_ORDLIST_A, 0, TRUE, qdata_chars,
         qdata, &rstatus, &dsize, &datap);
 if (qres)
  return;

 fprintf(fp,
  "   hits    addr/prefix or addr mask\n"
  "           restrictions\n"
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
   if (1 == sscanf(tag, addr_fmtu, &ui) &&
       decodenetnum(val, &row.addr))
    comprende = TRUE;
   break;

  case 'f':
   if (1 == sscanf(tag, flags_fmt, &ui)) {
    if (((void*)0) == val) {
     row.flagstr[0] = '\0';
     comprende = TRUE;
    } else if ((len = strlen(val)) < sizeof(row.flagstr)) {
     memcpy(row.flagstr, val, len);
     row.flagstr[len] = '\0';
     comprende = TRUE;
    } else {

     row.flagstr[0] = '\0';
    }
   }
   break;

  case 'h':
   if (1 == sscanf(tag, hits_fmt, &ui) &&
       1 == sscanf(val, "%lu", &row.hits))
    comprende = TRUE;
   break;

  case 'm':
   if (1 == sscanf(tag, mask_fmtu, &ui) &&
       decodenetnum(val, &row.mask))
    comprende = TRUE;
   break;
  }

  if (comprende) {

   validate_reslist_idx(fp, ui, &fields, &row);

   another_reslist_field(&fields, &row, fp);
  }
 }
 if (fields != RESLIST_FIELDS)
  fprintf(fp, "Warning: incomplete row with %d (of %d) fields",
   fields, RESLIST_FIELDS);

 fflush(fp);
}
