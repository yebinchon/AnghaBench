
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wind_profile_flags ;
typedef int uint32_t ;
typedef int out ;


 int ENOMEM ;
 int WIND_PROFILE_LDAP_CASE_EXACT_ASSERTION ;
 int WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE ;
 int WIND_PROFILE_LDAP_NUMERIC ;
 int WIND_PROFILE_LDAP_TELEPHONE ;
 int _wind_ldap_case_exact_attribute (int *,size_t,int *,size_t*) ;
 int _wind_stringprep_map (int const*,size_t,int *,size_t*,int) ;
 int _wind_stringprep_normalize (int *,size_t,int *,size_t*) ;
 int _wind_stringprep_prohibited (int *,size_t,int) ;
 int _wind_stringprep_testbidi (int *,size_t,int) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,int) ;

int
wind_stringprep(const uint32_t *in, size_t in_len,
  uint32_t *out, size_t *out_len,
  wind_profile_flags flags)
{
    size_t tmp_len = in_len * 3;
    uint32_t *tmp;
    int ret;
    size_t olen;

    if (in_len == 0) {
 *out_len = 0;
 return 0;
    }

    tmp = malloc(tmp_len * sizeof(uint32_t));
    if (tmp == ((void*)0))
 return ENOMEM;

    ret = _wind_stringprep_map(in, in_len, tmp, &tmp_len, flags);
    if (ret) {
 free(tmp);
 return ret;
    }

    olen = *out_len;
    ret = _wind_stringprep_normalize(tmp, tmp_len, tmp, &olen);
    if (ret) {
 free(tmp);
 return ret;
    }
    ret = _wind_stringprep_prohibited(tmp, olen, flags);
    if (ret) {
 free(tmp);
 return ret;
    }
    ret = _wind_stringprep_testbidi(tmp, olen, flags);
    if (ret) {
 free(tmp);
 return ret;
    }


    if (flags & WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE) {
 ret = _wind_ldap_case_exact_attribute(tmp, olen, out, out_len);





    } else {
 memcpy(out, tmp, sizeof(out[0]) * olen);
 *out_len = olen;
    }
    free(tmp);

    return ret;
}
