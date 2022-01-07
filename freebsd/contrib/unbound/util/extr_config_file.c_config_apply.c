
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef void* time_t ;
struct config_file {int stream_wait_size; int permit_small_holddown; int log_time_ascii; int unknown_server_time_limit; int log_tag_queryreply; int rrset_roundrobin; int minimal_responses; scalar_t__ edns_buffer_size; int infra_cache_min_rtt; scalar_t__ max_negative_ttl; scalar_t__ serve_expired_ttl; scalar_t__ min_ttl; scalar_t__ max_ttl; } ;


 scalar_t__ EDNS_ADVERTISED_SIZE ;
 int LOG_TAG_QUERYREPLY ;
 void* MAX_NEG_TTL ;
 void* MAX_TTL ;
 int MINIMAL_RESPONSES ;
 void* MIN_TTL ;
 int RRSET_ROUNDROBIN ;
 int RTT_MIN_TIMEOUT ;
 void* SERVE_EXPIRED_TTL ;
 int UNKNOWN_SERVER_NICENESS ;
 int autr_permit_small_holddown ;
 int log_set_time_asc (int ) ;
 int stream_wait_max ;

void
config_apply(struct config_file* config)
{
 MAX_TTL = (time_t)config->max_ttl;
 MIN_TTL = (time_t)config->min_ttl;
 SERVE_EXPIRED_TTL = (time_t)config->serve_expired_ttl;
 MAX_NEG_TTL = (time_t)config->max_negative_ttl;
 RTT_MIN_TIMEOUT = config->infra_cache_min_rtt;
 EDNS_ADVERTISED_SIZE = (uint16_t)config->edns_buffer_size;
 MINIMAL_RESPONSES = config->minimal_responses;
 RRSET_ROUNDROBIN = config->rrset_roundrobin;
 LOG_TAG_QUERYREPLY = config->log_tag_queryreply;
 UNKNOWN_SERVER_NICENESS = config->unknown_server_time_limit;
 log_set_time_asc(config->log_time_ascii);
 autr_permit_small_holddown = config->permit_small_holddown;
 stream_wait_max = config->stream_wait_size;
}
