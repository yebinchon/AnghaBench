
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int timeout_read; int timeout_write; } ;



void
bufferevent_settimeout(struct bufferevent *bufev,
    int timeout_read, int timeout_write) {
 bufev->timeout_read = timeout_read;
 bufev->timeout_write = timeout_write;
}
