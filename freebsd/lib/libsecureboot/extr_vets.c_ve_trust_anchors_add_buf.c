
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_certificate ;


 size_t openpgp_trust_add_buf (unsigned char*,size_t) ;
 int * parse_certificates (unsigned char*,size_t,size_t*) ;
 size_t ve_trust_anchors_add (int *,size_t) ;

size_t
ve_trust_anchors_add_buf(unsigned char *buf, size_t len)
{
 br_x509_certificate *xcs;
 size_t num;

 num = 0;
 xcs = parse_certificates(buf, len, &num);
 if (xcs != ((void*)0)) {
  num = ve_trust_anchors_add(xcs, num);




 }
 return (num);
}
