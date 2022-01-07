
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSIST (int) ;

__attribute__((used)) static void
addlen(size_t len, char **buf, size_t *buflen) {
 INSIST(len <= *buflen);
 *buf += len;
 *buflen -= len;
}
