
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int int32_t ;
typedef int buf ;
typedef int GUID ;


 int free (char*) ;
 int strlcpy (char*,char*,int) ;
 int uuid_to_string (int const*,char**,int *) ;

__attribute__((used)) static inline const char *
guid_str(const GUID *g)
{
 static char buf[36 + 1];
 char *str = ((void*)0);
 int32_t ignored_status;

 uuid_to_string((const uuid_t *)g, &str, &ignored_status);
 if (str != ((void*)0))
  strlcpy(buf, str, sizeof(buf));
 else
  strlcpy(buf, "groot-cannot-decode-guid-groot-smash",
      sizeof(buf));
 free(str);
 return buf;
}
