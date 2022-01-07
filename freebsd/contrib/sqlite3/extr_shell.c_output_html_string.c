
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int raw_printf (int *,char*) ;
 int utf8_printf (int *,char*,int,char const*) ;

__attribute__((used)) static void output_html_string(FILE *out, const char *z){
  int i;
  if( z==0 ) z = "";
  while( *z ){
    for(i=0; z[i]
            && z[i]!='<'
            && z[i]!='&'
            && z[i]!='>'
            && z[i]!='\"'
            && z[i]!='\'';
        i++){}
    if( i>0 ){
      utf8_printf(out,"%.*s",i,z);
    }
    if( z[i]=='<' ){
      raw_printf(out,"&lt;");
    }else if( z[i]=='&' ){
      raw_printf(out,"&amp;");
    }else if( z[i]=='>' ){
      raw_printf(out,"&gt;");
    }else if( z[i]=='\"' ){
      raw_printf(out,"&quot;");
    }else if( z[i]=='\'' ){
      raw_printf(out,"&#39;");
    }else{
      break;
    }
    z += i + 1;
  }
}
