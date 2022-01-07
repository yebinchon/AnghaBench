
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 char* realloc (char*,int) ;
 int shell_out_of_memory () ;
 int sqlite3_free (char*) ;
 char* sqlite3_win32_mbcs_to_utf8_v2 (char*,int ) ;
 int * stdin ;
 scalar_t__ stdin_is_interactive ;
 int strlen30 (char*) ;

__attribute__((used)) static char *local_getline(char *zLine, FILE *in){
  int nLine = zLine==0 ? 0 : 100;
  int n = 0;

  while( 1 ){
    if( n+100>nLine ){
      nLine = nLine*2 + 100;
      zLine = realloc(zLine, nLine);
      if( zLine==0 ) shell_out_of_memory();
    }
    if( fgets(&zLine[n], nLine - n, in)==0 ){
      if( n==0 ){
        free(zLine);
        return 0;
      }
      zLine[n] = 0;
      break;
    }
    while( zLine[n] ) n++;
    if( n>0 && zLine[n-1]=='\n' ){
      n--;
      if( n>0 && zLine[n-1]=='\r' ) n--;
      zLine[n] = 0;
      break;
    }
  }
  return zLine;
}
