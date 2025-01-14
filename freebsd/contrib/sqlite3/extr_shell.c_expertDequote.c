
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRLEN (char const*) ;
 int assert (int) ;
 char* sqlite3_malloc (int) ;

__attribute__((used)) static char *expertDequote(const char *zIn){
  int n = STRLEN(zIn);
  char *zRet = sqlite3_malloc(n);

  assert( zIn[0]=='\'' );
  assert( zIn[n-1]=='\'' );

  if( zRet ){
    int iOut = 0;
    int iIn = 0;
    for(iIn=1; iIn<(n-1); iIn++){
      if( zIn[iIn]=='\'' ){
        assert( zIn[iIn+1]=='\'' );
        iIn++;
      }
      zRet[iOut++] = zIn[iIn];
    }
    zRet[iOut] = '\0';
  }

  return zRet;
}
