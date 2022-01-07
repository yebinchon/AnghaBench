
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_op {int ses; } ;


 int CIOCFSESSION ;
 int SYS_F_IOCTL ;
 int SYSerr (int ,int ) ;
 int cfd ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memset (struct session_op*,int ,int) ;

__attribute__((used)) static int clean_devcrypto_session(struct session_op *sess) {
    if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
        SYSerr(SYS_F_IOCTL, errno);
        return 0;
    }
    memset(sess, 0, sizeof(struct session_op));
    return 1;
}
