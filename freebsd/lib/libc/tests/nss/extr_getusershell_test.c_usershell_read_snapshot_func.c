
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell {int * path; } ;


 int ATF_REQUIRE (int ) ;
 int * strdup (char*) ;

__attribute__((used)) static int
usershell_read_snapshot_func(struct usershell *us, char *line)
{

 us->path = strdup(line);
 ATF_REQUIRE(us->path != ((void*)0));

 return (0);
}
