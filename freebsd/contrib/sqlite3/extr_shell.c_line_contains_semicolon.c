
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int line_contains_semicolon(const char *z, int N){
  int i;
  for(i=0; i<N; i++){ if( z[i]==';' ) return 1; }
  return 0;
}
