
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int dummy; } ;
typedef void rsn_pmksa_cache ;



__attribute__((used)) static inline struct rsn_pmksa_cache *
pmksa_cache_init(void (*free_cb)(struct rsn_pmksa_cache_entry *entry,
     void *ctx, enum pmksa_free_reason reason),
   void *ctx, struct wpa_sm *sm)
{
 return (void *) -1;
}
