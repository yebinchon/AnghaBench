
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ConfigLevel ;
 int MAXLINE ;
 int MAXMAPACTIONS ;
 int MAXMAPSTACK ;
 int ST_FIND ;
 int ST_MAP ;
 int makemapentry (char*) ;
 int sm_strlcat (char*,char*,int) ;
 int sm_strlcpy (char*,char*,int) ;
 int * stab (char*,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int switch_map_find (char*,char**,short*) ;

void
inithostmaps()
{
 register int i;
 int nmaps;
 char *maptype[MAXMAPSTACK];
 short mapreturn[MAXMAPACTIONS];
 char buf[MAXLINE];





 if (stab("host", ST_MAP, ST_FIND) == ((void*)0))
 {

  (void) sm_strlcpy(buf, "host host", sizeof(buf));




  (void) makemapentry(buf);
 }





 nmaps = switch_map_find("aliases", maptype, mapreturn);
 for (i = 0; i < nmaps; i++)
 {
  if (strcmp(maptype[i], "files") == 0 &&
      stab("aliases.files", ST_MAP, ST_FIND) == ((void*)0))
  {
   (void) sm_strlcpy(buf, "aliases.files null",
       sizeof(buf));
   (void) makemapentry(buf);
  }
 }
 if (stab("aliases", ST_MAP, ST_FIND) == ((void*)0))
 {
  (void) sm_strlcpy(buf, "aliases switch aliases", sizeof(buf));
  (void) makemapentry(buf);
 }
}
