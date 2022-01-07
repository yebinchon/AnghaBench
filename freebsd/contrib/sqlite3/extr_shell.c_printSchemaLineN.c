
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int printSchemaLine (int *,char*,char const*) ;

__attribute__((used)) static void printSchemaLineN(FILE *out, char *z, int n, const char *zTail){
  char c = z[n];
  z[n] = 0;
  printSchemaLine(out, z, zTail);
  z[n] = c;
}
