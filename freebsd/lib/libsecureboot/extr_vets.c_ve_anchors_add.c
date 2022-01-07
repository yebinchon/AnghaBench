
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int br_x509_trust_anchor ;
typedef int br_x509_certificate ;
typedef int anchor_list ;


 int VEC_ADD (int ,int ) ;
 scalar_t__ anchor_verbose ;
 scalar_t__ certificate_to_trust_anchor_inner (int *,int *) ;
 int printf (char*,char*,char const*) ;
 char* x509_cn_get (int *,char*,int) ;

__attribute__((used)) static size_t
ve_anchors_add(br_x509_certificate *xcs, size_t num, anchor_list *anchors,
    const char *anchors_name)
{
 br_x509_trust_anchor ta;
 size_t u;

 for (u = 0; u < num; u++) {
  if (certificate_to_trust_anchor_inner(&ta, &xcs[u]) < 0) {
   break;
  }
  VEC_ADD(*anchors, ta);
  if (anchor_verbose && anchors_name) {
   char buf[64];
   char *cp;

   cp = x509_cn_get(&xcs[u], buf, sizeof(buf));
   if (cp) {
    printf("x509_anchor(%s) %s\n", cp, anchors_name);
   }
  }
 }
 return (u);
}
