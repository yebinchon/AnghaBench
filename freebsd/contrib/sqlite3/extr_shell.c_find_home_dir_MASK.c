#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*,char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static char *FUNC8(int clearFlag){
  static char *home_dir = NULL;
  if( clearFlag ){
    FUNC0(home_dir);
    home_dir = 0;
    return 0;
  }
  if( home_dir ) return home_dir;

#if !defined(_WIN32) && !defined(WIN32) && !defined(_WIN32_WCE) \
     && !defined(__RTP__) && !defined(_WRS_KERNEL)
  {
    struct passwd *pwent;
    uid_t uid = FUNC3();
    if( (pwent=FUNC2(uid)) != NULL) {
      home_dir = pwent->pw_dir;
    }
  }
#endif

#if defined(_WIN32_WCE)
  /* Windows CE (arm-wince-mingw32ce-gcc) does not provide getenv()
   */
  home_dir = "/";
#else

#if defined(_WIN32) || defined(WIN32)
  if (!home_dir) {
    home_dir = getenv("USERPROFILE");
  }
#endif

  if (!home_dir) {
    home_dir = FUNC1("HOME");
  }

#if defined(_WIN32) || defined(WIN32)
  if (!home_dir) {
    char *zDrive, *zPath;
    int n;
    zDrive = getenv("HOMEDRIVE");
    zPath = getenv("HOMEPATH");
    if( zDrive && zPath ){
      n = strlen30(zDrive) + strlen30(zPath) + 1;
      home_dir = malloc( n );
      if( home_dir==0 ) return 0;
      sqlite3_snprintf(n, home_dir, "%s%s", zDrive, zPath);
      return home_dir;
    }
    home_dir = "c:\\";
  }
#endif

#endif /* !_WIN32_WCE */

  if( home_dir ){
    int n = FUNC7(home_dir) + 1;
    char *z = FUNC4( n );
    if( z ) FUNC5(z, home_dir, n);
    home_dir = z;
  }

  return home_dir;
}