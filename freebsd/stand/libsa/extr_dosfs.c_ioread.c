
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef char u_char ;
typedef int local_buf ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DOS_FS ;


 int SECSIZ ;
 int bytsec (int) ;
 int ioget (int ,int ,char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int
ioread(DOS_FS *fs, u_int offset, void *buf, size_t nbyte)
{
    char *s;
    u_int off, n;
    int err;
    u_char local_buf[SECSIZ];

    s = buf;
    if ((off = offset & (SECSIZ - 1))) {
        offset -= off;
        if ((n = SECSIZ - off) > nbyte)
            n = nbyte;
        if ((err = ioget(fs->fd, bytsec(offset), local_buf, sizeof(local_buf))))
            return (err);
 memcpy(s, local_buf + off, n);
        offset += SECSIZ;
        s += n;
        nbyte -= n;
    }
    n = nbyte & (SECSIZ - 1);
    if (nbyte -= n) {
        if ((err = ioget(fs->fd, bytsec(offset), s, nbyte)))
            return (err);
        offset += nbyte;
        s += nbyte;
    }
    if (n) {
        if ((err = ioget(fs->fd, bytsec(offset), local_buf, sizeof(local_buf))))
            return (err);
 memcpy(s, local_buf, n);
    }
    return (0);
}
