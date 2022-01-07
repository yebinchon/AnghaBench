
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ENOMEM ;
 size_t MAX_LENGTH_CANON ;
 int canonical_reorder (int *,size_t) ;
 int combine (int *,size_t,int *,size_t*) ;
 int compat_decomp (int const*,size_t,int *,size_t*) ;
 int free (int *) ;
 int * malloc (size_t) ;

int
_wind_stringprep_normalize(const uint32_t *in, size_t in_len,
      uint32_t *out, size_t *out_len)
{
    size_t tmp_len;
    uint32_t *tmp;
    int ret;

    if (in_len == 0) {
 *out_len = 0;
 return 0;
    }

    tmp_len = in_len * 4;
    if (tmp_len < MAX_LENGTH_CANON)
 tmp_len = MAX_LENGTH_CANON;
    tmp = malloc(tmp_len * sizeof(uint32_t));
    if (tmp == ((void*)0))
 return ENOMEM;

    ret = compat_decomp(in, in_len, tmp, &tmp_len);
    if (ret) {
 free(tmp);
 return ret;
    }
    canonical_reorder(tmp, tmp_len);
    ret = combine(tmp, tmp_len, out, out_len);
    free(tmp);
    return ret;
}
