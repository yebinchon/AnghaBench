
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int destroy_dev (int ) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int sdev ;
 int vcio_devsw ;

__attribute__((used)) static int
vcio_load(module_t mod, int cmd, void *arg)
{
    int err = 0;

    switch (cmd) {
    case 129:
 sdev = make_dev(&vcio_devsw, 0, UID_ROOT, GID_WHEEL, 0600, "vcio");
 break;

    case 128:
 destroy_dev(sdev);
 break;

    default:
 err = EOPNOTSUPP;
 break;
    }

    return(err);
}
