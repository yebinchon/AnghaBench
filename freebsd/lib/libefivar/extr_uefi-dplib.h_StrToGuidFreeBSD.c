
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
typedef int GUID ;


 int uuid_from_string (char const*,int *,int *) ;

__attribute__((used)) static inline void
StrToGuid(const char *str, GUID *guid)
{
 uint32_t status;

 uuid_from_string(str, (uuid_t *)guid, &status);
}
