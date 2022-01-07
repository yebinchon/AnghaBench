
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ArraySize (char**) ;
 char** azHelp ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_strglob (char*,char*) ;
 scalar_t__ sqlite3_strlike (char*,char*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int utf8_printf (int *,char*,char*) ;

__attribute__((used)) static int showHelp(FILE *out, const char *zPattern){
  int i = 0;
  int j = 0;
  int n = 0;
  char *zPat;
  if( zPattern==0
   || zPattern[0]=='0'
   || strcmp(zPattern,"-a")==0
   || strcmp(zPattern,"-all")==0
  ){

    if( zPattern==0 ) zPattern = "";
    for(i=0; i<ArraySize(azHelp); i++){
      if( azHelp[i][0]=='.' || zPattern[0] ){
        utf8_printf(out, "%s\n", azHelp[i]);
        n++;
      }
    }
  }else{

    zPat = sqlite3_mprintf(".%s*", zPattern);
    for(i=0; i<ArraySize(azHelp); i++){
      if( sqlite3_strglob(zPat, azHelp[i])==0 ){
        utf8_printf(out, "%s\n", azHelp[i]);
        j = i+1;
        n++;
      }
    }
    sqlite3_free(zPat);
    if( n ){
      if( n==1 ){


        while( j<ArraySize(azHelp)-1 && azHelp[j][0]!='.' ){
          utf8_printf(out, "%s\n", azHelp[j]);
          j++;
        }
      }
      return n;
    }


    zPat = sqlite3_mprintf("%%%s%%", zPattern);
    for(i=0; i<ArraySize(azHelp); i++){
      if( azHelp[i][0]=='.' ) j = i;
      if( sqlite3_strlike(zPat, azHelp[i], 0)==0 ){
        utf8_printf(out, "%s\n", azHelp[j]);
        while( j<ArraySize(azHelp)-1 && azHelp[j+1][0]!='.' ){
          j++;
          utf8_printf(out, "%s\n", azHelp[j]);
        }
        i = j;
        n++;
      }
    }
    sqlite3_free(zPat);
  }
  return n;
}
