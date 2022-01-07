
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int raw_printf (int *,char*) ;
 int setBinaryMode (int *,int) ;
 int setTextMode (int *,int) ;
 int utf8_printf (int *,char*,...) ;

__attribute__((used)) static void output_quoted_string(FILE *out, const char *z){
  int i;
  char c;
  setBinaryMode(out, 1);
  for(i=0; (c = z[i])!=0 && c!='\''; i++){}
  if( c==0 ){
    utf8_printf(out,"'%s'",z);
  }else{
    raw_printf(out, "'");
    while( *z ){
      for(i=0; (c = z[i])!=0 && c!='\''; i++){}
      if( c=='\'' ) i++;
      if( i ){
        utf8_printf(out, "%.*s", i, z);
        z += i;
      }
      if( c=='\'' ){
        raw_printf(out, "'");
        continue;
      }
      if( c==0 ){
        break;
      }
      z++;
    }
    raw_printf(out, "'");
  }
  setTextMode(out, 1);
}
