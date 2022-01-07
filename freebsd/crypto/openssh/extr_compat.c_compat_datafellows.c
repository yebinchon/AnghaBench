
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
 int datafellows ;
 int debug (char*,char const*,...) ;
 int match_pattern_list (char const*,char*,int ) ;

u_int
compat_datafellows(const char *version)
{
 int i;
 static struct {
  char *pat;
  int bugs;
 } check[] = {
  { "OpenSSH_2.*,"
    "OpenSSH_3.0*,"
    "OpenSSH_3.1*", 140|129|
     133},
  { "OpenSSH_3.*", 129|133 },
  { "Sun_SSH_1.0*", 137|140|
     133},
  { "OpenSSH_2*,"
    "OpenSSH_3*,"
    "OpenSSH_4*", 133 },
  { "OpenSSH_5*", 131|141|
     133},
  { "OpenSSH_6.6.1*", 131|133},
  { "OpenSSH_6.5*,"
    "OpenSSH_6.6*", 131|144|
     133},
  { "OpenSSH_7.0*,"
    "OpenSSH_7.1*,"
    "OpenSSH_7.2*,"
    "OpenSSH_7.3*,"
    "OpenSSH_7.4*,"
    "OpenSSH_7.5*,"
    "OpenSSH_7.6*,"
    "OpenSSH_7.7*", 131|133},
  { "OpenSSH*", 131 },
  { "*MindTerm*", 0 },
  { "3.0.*", 143 },
  { "3.0 SecureCRT*", 128 },
  { "1.7 SecureFX*", 128 },
  { "1.2.18*,"
    "1.2.19*,"
    "1.2.20*,"
    "1.2.21*,"
    "1.2.22*", 138 },
  { "1.3.2*",
     138 },
  { "Cisco-1.*", 142|
     139 },
  { "*SSH Compatible Server*",
     136 },
  { "*OSU_0*,"
    "OSU_1.0*,"
    "OSU_1.1*,"
    "OSU_1.2*,"
    "OSU_1.3*,"
    "OSU_1.4*,"
    "OSU_1.5alpha1*,"
    "OSU_1.5alpha2*,"
    "OSU_1.5alpha3*", 136 },
  { "*SSH_Version_Mapper*",
     134 },
  { "PuTTY_Local:*,"
    "PuTTY-Release-0.5*,"
    "PuTTY_Release_0.5*,"
    "PuTTY_Release_0.60*,"
    "PuTTY_Release_0.61*,"
    "PuTTY_Release_0.62*,"
    "PuTTY_Release_0.63*,"
    "PuTTY_Release_0.64*",
     130 },
  { "FuTTY*", 130 },
  { "Probe-*",
     135 },
  { "TeraTerm SSH*,"
    "TTSSH/1.5.*,"
    "TTSSH/2.1*,"
    "TTSSH/2.2*,"
    "TTSSH/2.3*,"
    "TTSSH/2.4*,"
    "TTSSH/2.5*,"
    "TTSSH/2.6*,"
    "TTSSH/2.70*,"
    "TTSSH/2.71*,"
    "TTSSH/2.72*", 139 },
  { "WinSCP_release_4*,"
    "WinSCP_release_5.0*,"
    "WinSCP_release_5.1,"
    "WinSCP_release_5.1.*,"
    "WinSCP_release_5.5,"
    "WinSCP_release_5.5.*,"
    "WinSCP_release_5.6,"
    "WinSCP_release_5.6.*,"
    "WinSCP_release_5.7,"
    "WinSCP_release_5.7.1,"
    "WinSCP_release_5.7.2,"
    "WinSCP_release_5.7.3,"
    "WinSCP_release_5.7.4",
     130 },
  { "ConfD-*",
     132 },
  { "Twisted_*", 0 },
  { "Twisted*", 143 },
  { ((void*)0), 0 }
 };


 for (i = 0; check[i].pat; i++) {
  if (match_pattern_list(version, check[i].pat, 0) == 1) {
   debug("match: %s pat %s compat 0x%08x",
       version, check[i].pat, check[i].bugs);
   datafellows = check[i].bugs;
   return check[i].bugs;
  }
 }
 debug("no match: %s", version);
 return 0;
}
