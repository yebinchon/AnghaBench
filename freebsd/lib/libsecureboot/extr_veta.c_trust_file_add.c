
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_certificate ;


 scalar_t__ load_key_file (char const*) ;
 int * read_certificates (char const*,size_t*) ;
 size_t ve_trust_anchors_add (int *,size_t) ;

__attribute__((used)) static size_t
trust_file_add(const char *trust)
{
 br_x509_certificate *xcs;
 size_t num;

 xcs = read_certificates(trust, &num);
 if (xcs) {
  num = ve_trust_anchors_add(xcs, num);
 }





 return (num);
}
