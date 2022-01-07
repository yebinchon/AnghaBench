
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ GSMERR_OK ;
 int test_mic (struct client*,scalar_t__,struct client*,scalar_t__) ;
 scalar_t__ test_wrap (struct client*,scalar_t__,struct client*,scalar_t__,int) ;
 scalar_t__ test_wrap_ext (struct client*,scalar_t__,struct client*,scalar_t__,int,int) ;

__attribute__((used)) static int32_t
test_token(struct client *c1, int32_t hc1, struct client *c2, int32_t hc2, int wrap_ext)
{
    int32_t val;
    int i;

    for (i = 0; i < 10; i++) {

 test_mic(c1, hc1, c2, hc2);
 test_mic(c2, hc2, c1, hc1);


 val = test_wrap(c1, hc1, c2, hc2, 0);
 if (val) return val;
 val = test_wrap(c2, hc2, c1, hc1, 0);
 if (val) return val;

 val = test_wrap(c1, hc1, c2, hc2, 1);
 if (val) return val;
 val = test_wrap(c2, hc2, c1, hc1, 1);
 if (val) return val;

 if (wrap_ext) {

     val = test_wrap_ext(c1, hc1, c2, hc2, 1, 0);
     if (val) return val;
     val = test_wrap_ext(c2, hc2, c1, hc1, 1, 0);
     if (val) return val;

     val = test_wrap_ext(c1, hc1, c2, hc2, 1, 1);
     if (val) return val;
     val = test_wrap_ext(c2, hc2, c1, hc1, 1, 1);
     if (val) return val;

     val = test_wrap_ext(c1, hc1, c2, hc2, 0, 0);
     if (val) return val;
     val = test_wrap_ext(c2, hc2, c1, hc1, 0, 0);
     if (val) return val;

     val = test_wrap_ext(c1, hc1, c2, hc2, 0, 1);
     if (val) return val;
     val = test_wrap_ext(c2, hc2, c1, hc1, 0, 1);
     if (val) return val;
 }
    }
    return GSMERR_OK;
}
