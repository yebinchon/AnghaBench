
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_file {int * tagname; } ;
typedef int buf ;


 int snprintf (char*,int,char*,char*,int ) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;

char* config_taglist2str(struct config_file* cfg, uint8_t* taglist,
        size_t taglen)
{
 char buf[10240];
 size_t i, j, len = 0;
 buf[0] = 0;
 for(i=0; i<taglen; i++) {
  if(taglist[i] == 0)
   continue;
  for(j=0; j<8; j++) {
   if((taglist[i] & (1<<j)) != 0) {
    size_t id = i*8 + j;
    snprintf(buf+len, sizeof(buf)-len, "%s%s",
     (len==0?"":" "), cfg->tagname[id]);
    len += strlen(buf+len);
   }
  }
 }
 return strdup(buf);
}
