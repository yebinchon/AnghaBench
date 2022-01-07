
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef void* svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_1__* cur_dir; TYPE_3__* cur_file; void* send_all_mode; void* add_props_included; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_12__ {char const* copyfrom_path; void* fetch_props; int pool; int txdelta_stream; int txdelta_baton; int txdelta; int base_md5_checksum; void* fetch_file; int final_sha1_checksum; void* copyfrom_rev; void* base_rev; } ;
typedef TYPE_3__ file_baton_t ;
struct TYPE_13__ {char const* copyfrom_path; void* fetch_props; void* copyfrom_rev; int pool; void* base_rev; } ;
typedef TYPE_4__ dir_baton_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {void* fetch_props; } ;




 void* FALSE ;



 int SVN_ERR (int ) ;
 int SVN_ERR_XML_ATTRIB_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 void* TRUE ;


 int _ (char*) ;
 int create_dir_baton (TYPE_4__**,TYPE_2__*,char const*,int *) ;
 int create_file_baton (TYPE_3__**,TYPE_2__*,char const*,int *) ;
 int open_file_txdelta (TYPE_3__*,int *) ;
 int strcmp (char const*,char*) ;
 int svn_base64_decode (int *,int ) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (int *,int ,char const*,int ) ;
 int svn_checksum_sha1 ;
 int svn_cstring_atoi64 (int *,char const*) ;
 int svn_delta_noop_window_handler ;
 int * svn_error_createf (int ,int *,int ,char*) ;
 void* svn_fspath__canonicalize (char const*,int ) ;
 char const* svn_hash_gets (int *,char*) ;
 int * svn_ra_serf__xml_gather_since (int *,int const) ;
 int * svn_txdelta_parse_svndiff (int ,int ,void*,int ) ;

__attribute__((used)) static svn_error_t *
update_opened(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int entered_state,
              const svn_ra_serf__dav_props_t *tag,
              apr_pool_t *scratch_pool)
{
  report_context_t *ctx = baton;
  apr_hash_t *attrs;

  switch (entered_state)
    {
      case 128:
        {
          const char *val;

          attrs = svn_ra_serf__xml_gather_since(xes, 128);
          val = svn_hash_gets(attrs, "inline-props");

          if (val && (strcmp(val, "true") == 0))
            ctx->add_props_included = TRUE;

          val = svn_hash_gets(attrs, "send-all");

          if (val && (strcmp(val, "true") == 0))
            {
              ctx->send_all_mode = TRUE;


              ctx->add_props_included = TRUE;
            }
        }
        break;

      case 131:
      case 134:
        {
          dir_baton_t *dir;
          const char *name;
          attrs = svn_ra_serf__xml_gather_since(xes, entered_state);

          name = svn_hash_gets(attrs, "name");
          if (!name)
            name = "";

          SVN_ERR(create_dir_baton(&dir, ctx, name, scratch_pool));

          if (entered_state == 131)
            {
              apr_int64_t base_rev;

              SVN_ERR(svn_cstring_atoi64(&base_rev,
                                         svn_hash_gets(attrs, "rev")));
              dir->base_rev = (svn_revnum_t)base_rev;
            }
          else
            {
              dir->copyfrom_path = svn_hash_gets(attrs, "copyfrom-path");

              if (dir->copyfrom_path)
                {
                  apr_int64_t copyfrom_rev;
                  const char *copyfrom_rev_str;
                  dir->copyfrom_path = svn_fspath__canonicalize(
                                                        dir->copyfrom_path,
                                                        dir->pool);

                  copyfrom_rev_str = svn_hash_gets(attrs, "copyfrom-rev");

                  if (!copyfrom_rev_str)
                    return svn_error_createf(SVN_ERR_XML_ATTRIB_NOT_FOUND,
                                             ((void*)0),
                                            _("Missing '%s' attribute"),
                                            "copyfrom-rev");

                  SVN_ERR(svn_cstring_atoi64(&copyfrom_rev, copyfrom_rev_str));

                  dir->copyfrom_rev = (svn_revnum_t)copyfrom_rev;
                }

              if (! ctx->add_props_included)
                dir->fetch_props = TRUE;
            }
        }
        break;
      case 130:
      case 133:
        {
          file_baton_t *file;

          attrs = svn_ra_serf__xml_gather_since(xes, entered_state);

          SVN_ERR(create_file_baton(&file, ctx, svn_hash_gets(attrs, "name"),
                                    scratch_pool));

          if (entered_state == 130)
            {
              apr_int64_t base_rev;

              SVN_ERR(svn_cstring_atoi64(&base_rev,
                                         svn_hash_gets(attrs, "rev")));
              file->base_rev = (svn_revnum_t)base_rev;
            }
          else
            {
              const char *sha1_checksum;
              file->copyfrom_path = svn_hash_gets(attrs, "copyfrom-path");

              if (file->copyfrom_path)
                {
                  apr_int64_t copyfrom_rev;
                  const char *copyfrom_rev_str;

                  file->copyfrom_path = svn_fspath__canonicalize(
                                                        file->copyfrom_path,
                                                        file->pool);

                  copyfrom_rev_str = svn_hash_gets(attrs, "copyfrom-rev");

                  if (!copyfrom_rev_str)
                    return svn_error_createf(SVN_ERR_XML_ATTRIB_NOT_FOUND,
                                             ((void*)0),
                                            _("Missing '%s' attribute"),
                                            "copyfrom-rev");

                  SVN_ERR(svn_cstring_atoi64(&copyfrom_rev, copyfrom_rev_str));

                  file->copyfrom_rev = (svn_revnum_t)copyfrom_rev;
                }

              sha1_checksum = svn_hash_gets(attrs, "sha1-checksum");
              if (sha1_checksum)
                {
                  SVN_ERR(svn_checksum_parse_hex(&file->final_sha1_checksum,
                                                 svn_checksum_sha1,
                                                 sha1_checksum,
                                                 file->pool));
                }



              if (! ctx->send_all_mode)
                file->fetch_file = TRUE;



              if (! ctx->add_props_included)
                file->fetch_props = TRUE;
            }
        }
        break;

      case 129:
        {
          file_baton_t *file = ctx->cur_file;
          const char *base_checksum;





          if (! ctx->send_all_mode)
            break;

          file->fetch_file = FALSE;

          attrs = svn_ra_serf__xml_gather_since(xes, entered_state);
          base_checksum = svn_hash_gets(attrs, "base-checksum");

          if (base_checksum)
            SVN_ERR(svn_checksum_parse_hex(&file->base_md5_checksum,
                                           svn_checksum_md5, base_checksum,
                                           file->pool));

          SVN_ERR(open_file_txdelta(ctx->cur_file, scratch_pool));

          if (ctx->cur_file->txdelta != svn_delta_noop_window_handler)
            {
              svn_stream_t *decoder;

              decoder = svn_txdelta_parse_svndiff(file->txdelta,
                                                  file->txdelta_baton,
                                                  TRUE ,
                                                  file->pool);

              file->txdelta_stream = svn_base64_decode(decoder, file->pool);
            }
        }
        break;

      case 132:
        {
          if (ctx->cur_file)
            ctx->cur_file->fetch_props = TRUE;
          else if (ctx->cur_dir)
            ctx->cur_dir->fetch_props = TRUE;
        }
        break;
    }

  return SVN_NO_ERROR;
}
