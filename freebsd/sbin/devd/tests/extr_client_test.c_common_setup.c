
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int devd_addr ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int) ;
 int PF_LOCAL ;
 int SUN_LEN (struct sockaddr_un*) ;
 int connect (int,struct sockaddr*,int ) ;
 int create_two_events () ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
common_setup(int socktype, const char* sockpath) {
 struct sockaddr_un devd_addr;
 int s, error;

 memset(&devd_addr, 0, sizeof(devd_addr));
 devd_addr.sun_family = PF_LOCAL;
 strlcpy(devd_addr.sun_path, sockpath, sizeof(devd_addr.sun_path));
 s = socket(PF_LOCAL, socktype, 0);
 ATF_REQUIRE(s >= 0);
 error = connect(s, (struct sockaddr*)&devd_addr, SUN_LEN(&devd_addr));
 ATF_REQUIRE_EQ(0, error);

 create_two_events();
 return (s);
}
