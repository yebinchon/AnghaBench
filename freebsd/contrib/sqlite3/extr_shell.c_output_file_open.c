
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char*) ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 int utf8_printf (int *,char*,char const*) ;

__attribute__((used)) static FILE *output_file_open(const char *zFile, int bTextMode){
  FILE *f;
  if( strcmp(zFile,"stdout")==0 ){
    f = stdout;
  }else if( strcmp(zFile, "stderr")==0 ){
    f = stderr;
  }else if( strcmp(zFile, "off")==0 ){
    f = 0;
  }else{
    f = fopen(zFile, bTextMode ? "w" : "wb");
    if( f==0 ){
      utf8_printf(stderr, "Error: cannot open \"%s\"\n", zFile);
    }
  }
  return f;
}
