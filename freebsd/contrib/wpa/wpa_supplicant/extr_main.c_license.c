
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*,char*,char*,int ,int ) ;
 char* wpa_supplicant_full_license1 ;
 char* wpa_supplicant_full_license2 ;
 char* wpa_supplicant_full_license3 ;
 int wpa_supplicant_full_license4 ;
 int wpa_supplicant_full_license5 ;
 char* wpa_supplicant_version ;

__attribute__((used)) static void license(void)
{

 printf("%s\n\n%s%s%s%s%s\n",
        wpa_supplicant_version,
        wpa_supplicant_full_license1,
        wpa_supplicant_full_license2,
        wpa_supplicant_full_license3,
        wpa_supplicant_full_license4,
        wpa_supplicant_full_license5);

}
