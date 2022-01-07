
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int msg_type_values ;
 char* tok2str (int ,char*,int) ;

__attribute__((used)) static void
print_btp_body(netdissect_options *ndo,
               const u_char *bp)
{
 int version;
 int msg_type;
 const char *msg_type_str;


 version = bp[0];
 msg_type = bp[1];
 msg_type_str = tok2str(msg_type_values, "unknown (%u)", msg_type);

 ND_PRINT((ndo, "; ItsPduHeader v:%d t:%d-%s", version, msg_type, msg_type_str));
}
