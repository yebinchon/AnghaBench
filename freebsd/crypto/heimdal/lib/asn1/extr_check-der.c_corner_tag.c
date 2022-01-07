
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
typedef int Der_type ;
typedef int Der_class ;


 int der_get_tag (unsigned char const*,size_t,int *,int *,unsigned int*,size_t*) ;
 int errx (int,char*) ;

__attribute__((used)) static int
corner_tag(void)
{
    struct {
 int ok;
 const char *ptr;
 size_t len;
    } tests[] = {
 { 1, "\x00", 1 },
 { 0, "\xff", 1 },
 { 0, "\xff\xff\xff\xff\xff\xff\xff\xff", 8 }
    };
    int i, ret;
    Der_class cl;
    Der_type ty;
    unsigned int tag;
    size_t size;

    for (i = 0; i < sizeof(tests)/sizeof(tests[0]); i++) {
 ret = der_get_tag((const unsigned char*)tests[i].ptr,
     tests[i].len, &cl, &ty, &tag, &size);
 if (ret) {
     if (tests[i].ok)
  errx(1, "failed while shouldn't");
 } else {
     if (!tests[i].ok)
  errx(1, "passed while shouldn't");
 }
    }
    return 0;
}
