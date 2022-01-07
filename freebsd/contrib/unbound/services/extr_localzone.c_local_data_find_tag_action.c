
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 int VERB_ALGO ;
 int local_zone_type2str (int) ;
 int verbose (int ,char*,int,char* const,...) ;

enum localzone_type
local_data_find_tag_action(const uint8_t* taglist, size_t taglen,
 const uint8_t* taglist2, size_t taglen2, const uint8_t* tagactions,
 size_t tagactionssize, enum localzone_type lzt, int* tag,
 char* const* tagname, int num_tags)
{
 size_t i, j;
 uint8_t tagmatch;

 for(i=0; i<taglen && i<taglen2; i++) {
  tagmatch = (taglist[i] & taglist2[i]);
  for(j=0; j<8 && tagmatch>0; j++) {
   if((tagmatch & 0x1)) {
    *tag = (int)(i*8+j);
    verbose(VERB_ALGO, "matched tag [%d] %s",
     *tag, (*tag<num_tags?tagname[*tag]:"null"));

    if(i*8+j < tagactionssize && tagactions
       && tagactions[i*8+j] != 0) {
      verbose(VERB_ALGO, "tag action [%d] %s to type %s",
     *tag, (*tag<num_tags?tagname[*tag]:"null"),
       local_zone_type2str(
     (enum localzone_type)
     tagactions[i*8+j]));
      return (enum localzone_type)tagactions[i*8+j];
    }
    return lzt;
   }
   tagmatch >>= 1;
  }
 }
 return lzt;
}
