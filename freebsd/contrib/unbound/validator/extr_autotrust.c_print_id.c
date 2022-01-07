
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int FILE ;


 int errno ;
 scalar_t__ fprintf (int *,char*,char*,int) ;
 int free (char*) ;
 int log_err (char*,char*,...) ;
 char* sldns_wire2str_dname (int *,size_t) ;
 int strerror (int ) ;

__attribute__((used)) static int
print_id(FILE* out, char* fname, uint8_t* nm, size_t nmlen, uint16_t dclass)
{
 char* s = sldns_wire2str_dname(nm, nmlen);
 if(!s) {
  log_err("malloc failure in write to %s", fname);
  return 0;
 }
 if(fprintf(out, ";;id: %s %d\n", s, (int)dclass) < 0) {
  log_err("could not write to %s: %s", fname, strerror(errno));
  free(s);
  return 0;
 }
 free(s);
 return 1;
}
