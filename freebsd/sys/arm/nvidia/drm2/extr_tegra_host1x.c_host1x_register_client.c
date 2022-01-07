
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_softc {int clients; } ;
struct client_info {scalar_t__ activated; int client; } ;
typedef int device_t ;


 int LOCK (struct host1x_softc*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct client_info*,int ) ;
 int UNLOCK (struct host1x_softc*) ;
 struct host1x_softc* device_get_softc (int ) ;
 int list_e ;
 struct client_info* malloc (int,int ,int) ;

__attribute__((used)) static int
host1x_register_client(device_t dev, device_t client)
{
 struct host1x_softc *sc;
 struct client_info *entry;

 sc = device_get_softc(dev);

 entry = malloc(sizeof(struct client_info), M_DEVBUF, M_WAITOK | M_ZERO);
 entry->client = client;
 entry->activated = 0;

 LOCK(sc);
 TAILQ_INSERT_TAIL(&sc->clients, entry, list_e);
 UNLOCK(sc);

 return (0);
}
