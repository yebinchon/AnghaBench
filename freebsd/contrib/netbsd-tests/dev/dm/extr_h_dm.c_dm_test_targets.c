
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plistref {int pref_plist; } ;
typedef int prop_dictionary_t ;


 int NETBSD_DM_IOCTL ;
 int O_RDWR ;
 int __USE (char*) ;
 int err (int,char*) ;
 int prop_dictionary_create () ;
 char* prop_dictionary_externalize (int ) ;
 int prop_dictionary_externalize_to_pref (int ,struct plistref*) ;
 int prop_dictionary_internalize (int ) ;
 int prop_dictionary_internalize_from_file (char*) ;
 int rump_init () ;
 int rump_sys_close (int) ;
 int rump_sys_ioctl (int,int ,struct plistref*) ;
 int rump_sys_open (char*,int ,int ) ;

int
dm_test_targets(void) {
 int fd;
 int error;
 prop_dictionary_t dict_in, dict_out;
 struct plistref prefp;
 char *xml;

 error = 0;

 error = rump_init();
 if (error != 0)
  err(1, "Rump init failed");

 fd = rump_sys_open("/dev/mapper/control", O_RDWR, 0);
 if (fd == -1)
  err(1, "Open dm device failed");

 dict_in = prop_dictionary_internalize_from_file("dm_targets_cmd.plist");
 dict_out = prop_dictionary_create();

 prop_dictionary_externalize_to_pref(dict_in, &prefp);

 error = rump_sys_ioctl(fd, NETBSD_DM_IOCTL, &prefp);
 if (error < 0)
  err(1, "Dm control ioctl failed");

 dict_out = prop_dictionary_internalize(prefp.pref_plist);

 xml = prop_dictionary_externalize(dict_out);
 __USE(xml);

 rump_sys_close(fd);

 return error;
}
