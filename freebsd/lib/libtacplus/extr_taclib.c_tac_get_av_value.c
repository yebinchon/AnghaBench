
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tac_handle {TYPE_1__* srvr_avs; } ;
struct srvr_str {int len; char const* data; } ;
struct TYPE_2__ {char* data; int len; } ;


 int MAXAVPAIRS ;
 char* dup_str (struct tac_handle*,struct srvr_str*,int *) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

char *
tac_get_av_value(struct tac_handle *h, const char *attribute)
{
 int i, len;
 const char *ch, *end;
 const char *candidate;
 int candidate_len;
 int found_seperator;
 struct srvr_str srvr;

 if (attribute == ((void*)0) || ((len = strlen(attribute)) == 0))
  return ((void*)0);

 for (i=0; i<MAXAVPAIRS; i++) {
  candidate = h->srvr_avs[i].data;
  candidate_len = h->srvr_avs[i].len;






  if (!candidate)
   break;

  if (len < candidate_len &&
      !strncmp(candidate, attribute, len)) {

   ch = candidate + len;
   end = candidate + candidate_len;





   found_seperator = 0;
   while ((*ch == '=' || *ch == '*' || *ch == ' ' ||
    *ch == '\t') && ch != end) {
    if (*ch == '=' || *ch == '*')
     found_seperator++;
    ch++;
   }
   if (found_seperator == 1) {
    srvr.len = end - ch;
    srvr.data = ch;
    return dup_str(h, &srvr, ((void*)0));
   }
  }
 }
 return ((void*)0);
}
