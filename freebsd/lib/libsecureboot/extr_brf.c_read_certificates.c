
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_certificate ;


 int * parse_certificates (unsigned char*,size_t,size_t*) ;
 unsigned char* read_file (char const*,size_t*) ;
 int ve_error_set (char*,char const*) ;
 int xfree (unsigned char*) ;

br_x509_certificate *
read_certificates(const char *fname, size_t *num)
{
 br_x509_certificate *xcs;
 unsigned char *buf;
 size_t len;

 *num = 0;





 buf = read_file(fname, &len);
 if (buf == ((void*)0)) {
  return (((void*)0));
 }
 xcs = parse_certificates(buf, len, num);
 if (xcs == ((void*)0)) {
     ve_error_set("ERROR: no certificate in file '%s'\n", fname);
 }
 xfree(buf);
 return (xcs);
}
