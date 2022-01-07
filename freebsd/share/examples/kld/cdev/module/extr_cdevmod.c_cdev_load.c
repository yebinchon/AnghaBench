
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;
typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int destroy_dev (int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*) ;
 int my_devsw ;
 int printf (char*) ;
 int sdev ;

__attribute__((used)) static int
cdev_load(module_t mod, int cmd, void *arg)
{
    int err = 0;
    struct make_dev_args mda;

    switch (cmd) {
    case 129:




 printf("\nSample Loaded kld character device driver\n");
 printf("Copyright (c) 1998\n");
 printf("Rajesh Vaidheeswarran\n");
 printf("All rights reserved\n");

 make_dev_args_init(&mda);
 mda.mda_devsw = &my_devsw;
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0600;
 err = make_dev_s(&mda, &sdev, "cdev");
 break;

    case 128:
 printf("Unloaded kld character device driver\n");
 destroy_dev(sdev);
 break;

    default:
 err = EOPNOTSUPP;
 break;
    }

    return(err);
}
