
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void resolve_backslashes(char *z){
  int i, j;
  char c;
  while( *z && *z!='\\' ) z++;
  for(i=j=0; (c = z[i])!=0; i++, j++){
    if( c=='\\' && z[i+1]!=0 ){
      c = z[++i];
      if( c=='a' ){
        c = '\a';
      }else if( c=='b' ){
        c = '\b';
      }else if( c=='t' ){
        c = '\t';
      }else if( c=='n' ){
        c = '\n';
      }else if( c=='v' ){
        c = '\v';
      }else if( c=='f' ){
        c = '\f';
      }else if( c=='r' ){
        c = '\r';
      }else if( c=='"' ){
        c = '"';
      }else if( c=='\'' ){
        c = '\'';
      }else if( c=='\\' ){
        c = '\\';
      }else if( c>='0' && c<='7' ){
        c -= '0';
        if( z[i+1]>='0' && z[i+1]<='7' ){
          i++;
          c = (c<<3) + z[i] - '0';
          if( z[i+1]>='0' && z[i+1]<='7' ){
            i++;
            c = (c<<3) + z[i] - '0';
          }
        }
      }
    }
    z[j] = c;
  }
  if( j<i ) z[j] = 0;
}
