
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct z_packet {scalar_t__ kind; char const* class; char const* inst; char const* opcode; char const* sender; char const* recipient; char const* version; scalar_t__ numfields; char const* uid; scalar_t__ port; scalar_t__ auth; scalar_t__ authlen; char const* authdata; char const* format; scalar_t__ cksum; scalar_t__ multi; char const* multi_uid; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int PARSE_FIELD_INT (scalar_t__) ;
 int PARSE_FIELD_STR (char const*) ;
 scalar_t__ Z_PACKET_SERVACK ;
 int str_to_lower (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int tok2str (int ,char*,scalar_t__) ;
 int z_triple (char const*,char const*,char const*) ;
 int z_types ;

void
zephyr_print(netdissect_options *ndo, const u_char *cp, int length)
{
    struct z_packet z;
    const char *parse = (const char *) cp;
    int parselen = length;
    const char *s;
    int lose = 0;
    int truncated = 0;



    z.kind = 0;
    z.class = 0;
    z.inst = 0;
    z.opcode = 0;
    z.sender = 0;
    z.recipient = 0;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.version = s;;
    if (lose) return;
    if (strncmp(z.version, "ZEPH", 4))
 return;

    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.numfields = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.kind = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.uid = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.port = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.auth = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.authlen = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.authdata = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.class = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.inst = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.opcode = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.sender = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.recipient = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.format = s;;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.cksum = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.multi = strtol(s, 0, 16);;
    s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) z.multi_uid = s;;

    if (lose)
        goto trunc;

    ND_PRINT((ndo, " zephyr"));
    if (strncmp(z.version+4, "0.2", 3)) {
 ND_PRINT((ndo, " v%s", z.version+4));
 return;
    }

    ND_PRINT((ndo, " %s", tok2str(z_types, "type %d", z.kind)));
    if (z.kind == Z_PACKET_SERVACK) {

 const char *ackdata = ((void*)0);
 s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) ackdata = s;;
 if (!lose && strcmp(ackdata, "SENT"))
     ND_PRINT((ndo, "/%s", str_to_lower(ackdata)));
    }
    if (*z.sender) ND_PRINT((ndo, " %s", z.sender));

    if (!strcmp(z.class, "USER_LOCATE")) {
 if (!strcmp(z.opcode, "USER_HIDE"))
     ND_PRINT((ndo, " hide"));
 else if (!strcmp(z.opcode, "USER_UNHIDE"))
     ND_PRINT((ndo, " unhide"));
 else
     ND_PRINT((ndo, " locate %s", z.inst));
 return;
    }

    if (!strcmp(z.class, "ZEPHYR_ADMIN")) {
 ND_PRINT((ndo, " zephyr-admin %s", str_to_lower(z.opcode)));
 return;
    }

    if (!strcmp(z.class, "ZEPHYR_CTL")) {
 if (!strcmp(z.inst, "CLIENT")) {
     if (!strcmp(z.opcode, "SUBSCRIBE") ||
  !strcmp(z.opcode, "SUBSCRIBE_NODEFS") ||
  !strcmp(z.opcode, "UNSUBSCRIBE")) {

  ND_PRINT((ndo, " %ssub%s", strcmp(z.opcode, "SUBSCRIBE") ? "un" : "",
       strcmp(z.opcode, "SUBSCRIBE_NODEFS") ? "" :
           "-nodefs"));
  if (z.kind != Z_PACKET_SERVACK) {

      const char *c = ((void*)0), *i = ((void*)0), *r = ((void*)0);
      s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) c = s;;
      s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) i = s;;
      s = parse_field(ndo, &parse, &parselen, &truncated); if (truncated) goto trunc; if (!s) lose = 1; if (!lose) r = s;;
      if (!lose) ND_PRINT((ndo, " %s", z_triple(c, i, r)));
  }
  return;
     }

     if (!strcmp(z.opcode, "GIMME")) {
  ND_PRINT((ndo, " ret"));
  return;
     }

     if (!strcmp(z.opcode, "GIMMEDEFS")) {
  ND_PRINT((ndo, " gimme-defs"));
  return;
     }

     if (!strcmp(z.opcode, "CLEARSUB")) {
  ND_PRINT((ndo, " clear-subs"));
  return;
     }

     ND_PRINT((ndo, " %s", str_to_lower(z.opcode)));
     return;
 }

 if (!strcmp(z.inst, "HM")) {
     ND_PRINT((ndo, " %s", str_to_lower(z.opcode)));
     return;
 }

 if (!strcmp(z.inst, "REALM")) {
     if (!strcmp(z.opcode, "ADD_SUBSCRIBE"))
  ND_PRINT((ndo, " realm add-subs"));
     if (!strcmp(z.opcode, "REQ_SUBSCRIBE"))
  ND_PRINT((ndo, " realm req-subs"));
     if (!strcmp(z.opcode, "RLM_SUBSCRIBE"))
  ND_PRINT((ndo, " realm rlm-sub"));
     if (!strcmp(z.opcode, "RLM_UNSUBSCRIBE"))
  ND_PRINT((ndo, " realm rlm-unsub"));
     return;
 }
    }

    if (!strcmp(z.class, "HM_CTL")) {
 ND_PRINT((ndo, " hm_ctl %s", str_to_lower(z.inst)));
 ND_PRINT((ndo, " %s", str_to_lower(z.opcode)));
 return;
    }

    if (!strcmp(z.class, "HM_STAT")) {
 if (!strcmp(z.inst, "HMST_CLIENT") && !strcmp(z.opcode, "GIMMESTATS")) {
     ND_PRINT((ndo, " get-client-stats"));
     return;
 }
    }

    if (!strcmp(z.class, "WG_CTL")) {
 ND_PRINT((ndo, " wg_ctl %s", str_to_lower(z.inst)));
 ND_PRINT((ndo, " %s", str_to_lower(z.opcode)));
 return;
    }

    if (!strcmp(z.class, "LOGIN")) {
 if (!strcmp(z.opcode, "USER_FLUSH")) {
     ND_PRINT((ndo, " flush_locs"));
     return;
 }

 if (!strcmp(z.opcode, "NONE") ||
     !strcmp(z.opcode, "OPSTAFF") ||
     !strcmp(z.opcode, "REALM-VISIBLE") ||
     !strcmp(z.opcode, "REALM-ANNOUNCED") ||
     !strcmp(z.opcode, "NET-VISIBLE") ||
     !strcmp(z.opcode, "NET-ANNOUNCED")) {
     ND_PRINT((ndo, " set-exposure %s", str_to_lower(z.opcode)));
     return;
 }
    }

    if (!*z.recipient)
 z.recipient = "*";

    ND_PRINT((ndo, " to %s", z_triple(z.class, z.inst, z.recipient)));
    if (*z.opcode)
 ND_PRINT((ndo, " op %s", z.opcode));
    return;

trunc:
    ND_PRINT((ndo, " [|zephyr] (%d)", length));
    return;
}
