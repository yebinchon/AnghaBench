
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int buf ;


 int snprintf (char*,int,char*,unsigned int,unsigned int,unsigned int,char const*) ;

__attribute__((used)) static const char *
xz_ver_to_str(uint32_t ver)
{
 static char buf[32];

 unsigned int major = ver / 10000000U;
 ver -= major * 10000000U;

 unsigned int minor = ver / 10000U;
 ver -= minor * 10000U;

 unsigned int patch = ver / 10U;
 ver -= patch * 10U;

 const char *stability = ver == 0 ? "alpha" : ver == 1 ? "beta" : "";

 snprintf(buf, sizeof(buf), "%u.%u.%u%s",
   major, minor, patch, stability);
 return buf;
}
