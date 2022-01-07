
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* release; } ;


 int strtol (char*,char**,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static int
have_binary_usbmon(void)
{
 struct utsname utsname;
 char *version_component, *endp;
 int major, minor, subminor;

 if (uname(&utsname) == 0) {




  version_component = utsname.release;
  major = strtol(version_component, &endp, 10);
  if (endp != version_component && *endp == '.') {





   if (major >= 3)
    return 1;






   if (major <= 1)
    return 0;
  }





  version_component = endp + 1;
  minor = strtol(version_component, &endp, 10);
  if (endp != version_component &&
      (*endp == '.' || *endp == '\0')) {






   if (minor < 6) {




    return 0;
   }





   version_component = endp + 1;
   subminor = strtol(version_component, &endp, 10);
   if (endp != version_component &&
       (*endp == '.' || *endp == '\0')) {




    if (subminor >= 21) {




     return 1;
    }
   }
  }
 }





 return 0;
}
