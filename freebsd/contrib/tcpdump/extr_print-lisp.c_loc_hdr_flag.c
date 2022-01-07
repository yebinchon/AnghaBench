
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int bittok2str (int ,char*,int ) ;
 int lisp_loc_flag ;

__attribute__((used)) static void loc_hdr_flag(netdissect_options *ndo, uint16_t flag)
{
 ND_PRINT((ndo, " flags [%s],", bittok2str(lisp_loc_flag, "none", flag)));
}
