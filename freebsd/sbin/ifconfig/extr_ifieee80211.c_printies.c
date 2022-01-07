
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
 char* iename (int const) ;
 int isatherosoui (int const*) ;
 int istdmaoui (int const*) ;
 int iswmeinfo (int const*) ;
 int iswmeparam (int const*) ;
 int iswpaoui (int const*) ;
 int iswpsoui (int const*) ;
 int printapchanrep (char*,int const*,int,int) ;
 int printathie (char*,int const*,int,int) ;
 int printbssload (char*,int const*,int,int) ;
 int printcountry (char*,int const*,int,int) ;
 int printf (char*,int const) ;
 int printhtcap (char*,int const*,int,int) ;
 int printhtinfo (char*,int const*,int,int) ;
 int printie (char*,int const*,int,int) ;
 int printmeshconf (char*,int const*,int,int) ;
 int printrates (char*,int const*,int,int) ;
 int printrsnie (char*,int const*,int,int) ;
 int printssid (char*,int const*,int,int) ;
 int printtdmaie (char*,int const*,int,int) ;
 int printvhtcap (char*,int const*,int,int) ;
 int printvhtinfo (char*,int const*,int,int) ;
 int printvhtpwrenv (char*,int const*,int,int) ;
 int printwmeinfo (char*,int const*,int,int) ;
 int printwmeparam (char*,int const*,int,int) ;
 int printwpaie (char*,int const*,int,int) ;
 int printwpsie (char*,int const*,int,int) ;
 int verbose ;

__attribute__((used)) static void
printies(const u_int8_t *vp, int ielen, int maxcols)
{
 while (ielen > 0) {
  switch (vp[0]) {
  case 133:
   if (verbose)
    printssid(" SSID", vp, 2+vp[1], maxcols);
   break;
  case 135:
  case 128:
   if (verbose)
    printrates(vp[0] == 135 ?
        " RATES" : " XRATES", vp, 2+vp[1], maxcols);
   break;
  case 141:
   if (verbose)
    printf(" DSPARMS<%u>", vp[2]);
   break;
  case 142:
   if (verbose)
    printcountry(" COUNTRY", vp, 2+vp[1], maxcols);
   break;
  case 140:
   if (verbose)
    printf(" ERP<0x%x>", vp[2]);
   break;
  case 132:
   if (iswpaoui(vp))
    printwpaie(" WPA", vp, 2+vp[1], maxcols);
   else if (iswmeinfo(vp))
    printwmeinfo(" WME", vp, 2+vp[1], maxcols);
   else if (iswmeparam(vp))
    printwmeparam(" WME", vp, 2+vp[1], maxcols);
   else if (isatherosoui(vp))
    printathie(" ATH", vp, 2+vp[1], maxcols);
   else if (iswpsoui(vp))
    printwpsie(" WPS", vp, 2+vp[1], maxcols);
   else if (istdmaoui(vp))
    printtdmaie(" TDMA", vp, 2+vp[1], maxcols);
   else if (verbose)
    printie(" VEN", vp, 2+vp[1], maxcols);
   break;
  case 134:
   printrsnie(" RSN", vp, 2+vp[1], maxcols);
   break;
  case 139:
   printhtcap(" HTCAP", vp, 2+vp[1], maxcols);
   break;
  case 138:
   if (verbose)
    printhtinfo(" HTINFO", vp, 2+vp[1], maxcols);
   break;
  case 136:
   if (verbose)
    printssid(" MESHID", vp, 2+vp[1], maxcols);
   break;
  case 137:
   printmeshconf(" MESHCONF", vp, 2+vp[1], maxcols);
   break;
  case 131:
   printvhtcap(" VHTCAP", vp, 2+vp[1], maxcols);
   break;
  case 130:
   printvhtinfo(" VHTOPMODE", vp, 2+vp[1], maxcols);
   break;
  case 129:
   printvhtpwrenv(" VHTPWRENV", vp, 2+vp[1], maxcols);
   break;
  case 143:
   printbssload(" BSSLOAD", vp, 2+vp[1], maxcols);
   break;
  case 144:
   printapchanrep(" APCHANREP", vp, 2+vp[1], maxcols);
   break;
  default:
   if (verbose)
    printie(iename(vp[0]), vp, 2+vp[1], maxcols);
   break;
  }
  ielen -= 2+vp[1];
  vp += 2+vp[1];
 }
}
