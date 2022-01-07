
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int pcap_if_list_t ;
typedef int DIR ;


 int LINUX_USB_MON_DEV ;
 int PATH_MAX ;
 char* PROC_USB_BUS_DIR ;
 char* SYS_USB_BUS_DIR ;
 int closedir (int *) ;
 scalar_t__ have_binary_usbmon () ;
 scalar_t__ isdigit (char) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int sscanf (char*,char*,int*) ;
 int strlcpy (char*,int ,int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int usb_dev_add (int *,int,char*) ;

int
usb_findalldevs(pcap_if_list_t *devlistp, char *err_str)
{
 char usb_mon_dir[PATH_MAX];
 char *usb_mon_prefix;
 size_t usb_mon_prefix_len;
 struct dirent* data;
 int ret = 0;
 DIR* dir;
 int n;
 char* name;
 size_t len;

 if (have_binary_usbmon()) {






  strlcpy(usb_mon_dir, LINUX_USB_MON_DEV, sizeof usb_mon_dir);
  usb_mon_prefix = strrchr(usb_mon_dir, '/');
  if (usb_mon_prefix == ((void*)0)) {




   return 0;
  }
  *usb_mon_prefix++ = '\0';
  usb_mon_prefix_len = strlen(usb_mon_prefix);




  dir = opendir(usb_mon_dir);
  if (dir != ((void*)0)) {
   while ((ret == 0) && ((data = readdir(dir)) != 0)) {
    name = data->d_name;




    if (strncmp(name, usb_mon_prefix, usb_mon_prefix_len) != 0)
     continue;




    if (sscanf(&name[usb_mon_prefix_len], "%d", &n) == 0)
     continue;

    ret = usb_dev_add(devlistp, n, err_str);
   }

   closedir(dir);
  }
  return 0;
 } else {
  dir = opendir(SYS_USB_BUS_DIR);
  if (dir != ((void*)0)) {
   while ((ret == 0) && ((data = readdir(dir)) != 0)) {
    name = data->d_name;

    if (strncmp(name, "usb", 3) != 0)
     continue;

    if (sscanf(&name[3], "%d", &n) == 0)
     continue;

    ret = usb_dev_add(devlistp, n, err_str);
   }

   closedir(dir);
   return 0;
  }


  dir = opendir(PROC_USB_BUS_DIR);
  if (dir != ((void*)0)) {
   while ((ret == 0) && ((data = readdir(dir)) != 0)) {
    name = data->d_name;
    len = strlen(name);


    if ((len < 1) || !isdigit(name[--len]))
     continue;
    while (isdigit(name[--len]));
    if (sscanf(&name[len+1], "%d", &n) != 1)
     continue;

    ret = usb_dev_add(devlistp, n, err_str);
   }

   closedir(dir);
   return ret;
  }


  return 0;
 }
}
