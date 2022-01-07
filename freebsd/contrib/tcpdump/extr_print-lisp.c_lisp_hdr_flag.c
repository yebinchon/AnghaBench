
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
struct TYPE_8__ {int type_and_flag; } ;
typedef TYPE_2__ lisp_map_register_hdr ;


 int EXTRACT_32BITS (TYPE_2__ const*) ;
 scalar_t__ LISP_MAP_NOTIFY ;
 scalar_t__ LISP_MAP_REGISTER ;
 int ND_PRINT (TYPE_1__*) ;
 int bittok2str (int ,char*,int ) ;
 scalar_t__ extract_lisp_type (int ) ;
 int lisp_type ;
 int map_notify_hdr_flag ;
 int map_register_hdr_flag ;
 int tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static void lisp_hdr_flag(netdissect_options *ndo, const lisp_map_register_hdr *lisp_hdr)
{
 uint8_t type = extract_lisp_type(lisp_hdr->type_and_flag);

 if (!ndo->ndo_vflag) {
  ND_PRINT((ndo, "%s,", tok2str(lisp_type, "unknown-type-%u", type)));
  return;
 } else {
  ND_PRINT((ndo, "%s,", tok2str(lisp_type, "unknown-type-%u", type)));
 }

 if (type == LISP_MAP_REGISTER) {
  ND_PRINT((ndo, " flags [%s],", bittok2str(map_register_hdr_flag,
    "none", EXTRACT_32BITS(lisp_hdr))));
 } else if (type == LISP_MAP_NOTIFY) {
  ND_PRINT((ndo, " flags [%s],", bittok2str(map_notify_hdr_flag,
    "none", EXTRACT_32BITS(lisp_hdr))));
 }

 return;
}
