
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int str ;
struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef TYPE_1__ nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NVPAIR_ASSERT (TYPE_1__*) ;
 scalar_t__ NV_TYPE_STRING_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int nv_free (char*) ;
 char* nv_strdup (char const*) ;
 int nvpair_append (TYPE_1__*,char**,int,scalar_t__) ;
 scalar_t__ strlen (char*) ;

int
nvpair_append_string_array(nvpair_t *nvp, const char *value)
{
 char *str;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_STRING_ARRAY);
 if (value == ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (-1);
 }
 str = nv_strdup(value);
 if (str == ((void*)0)) {
  return (-1);
 }
 if (nvpair_append(nvp, &str, sizeof(str), strlen(str) + 1) == -1) {
  nv_free(str);
  return (-1);
 }
 return (0);
}
