
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config_entry {int dummy; } ;
struct event_config {int entries; } ;


 struct event_config_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct event_config_entry*,int ) ;
 int event_config_entry_free (struct event_config_entry*) ;
 int mm_free (struct event_config*) ;
 int next ;

void
event_config_free(struct event_config *cfg)
{
 struct event_config_entry *entry;

 while ((entry = TAILQ_FIRST(&cfg->entries)) != ((void*)0)) {
  TAILQ_REMOVE(&cfg->entries, entry, next);
  event_config_entry_free(entry);
 }
 mm_free(cfg);
}
