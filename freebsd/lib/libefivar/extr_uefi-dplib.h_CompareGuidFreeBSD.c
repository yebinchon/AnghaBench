
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
typedef int GUID ;
typedef int BOOLEAN ;


 scalar_t__ uuid_compare (int const*,int const*,int *) ;

__attribute__((used)) static inline BOOLEAN
CompareGuid (const GUID *g1, const GUID *g2)
{
 uint32_t ignored_status;

 return (uuid_compare((const uuid_t *)g1, (const uuid_t *)g2,
     &ignored_status) == 0);
}
