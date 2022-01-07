
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct example {size_t out_len; int out; int in_len; int in; } ;


 int WIND_PROFILE_NAME ;
 int _wind_stringprep_map (int ,int ,int *,size_t*,int ) ;
 int err (int,char*) ;
 int free (int *) ;
 int * malloc (size_t) ;
 scalar_t__ memcmp (int ,int *,size_t) ;
 int printf (char*) ;

__attribute__((used)) static int
try(const struct example *c)
{
    int ret;
    size_t out_len = c->out_len;
    uint32_t *tmp = malloc(out_len * sizeof(uint32_t));
    if (tmp == ((void*)0) && out_len != 0)
 err(1, "malloc");
    ret = _wind_stringprep_map(c->in, c->in_len, tmp, &out_len, WIND_PROFILE_NAME);
    if (ret) {
 printf("wind_stringprep_map failed\n");
 return 1;
    }
    if (out_len != c->out_len) {
 printf("wrong out len\n");
 free(tmp);
 return 1;
    }
    if (memcmp(c->out, tmp, out_len * sizeof(uint32_t)) != 0) {
 printf("wrong out data\n");
 free(tmp);
 return 1;
    }
    free(tmp);
    return 0;
}
