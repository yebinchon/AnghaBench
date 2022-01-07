
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {char const* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_21__ {TYPE_5__* cur_dir; TYPE_1__* editor; TYPE_4__* cur_file; int send_all_mode; int add_props_included; int editor_baton; void* done; } ;
typedef TYPE_3__ report_context_t ;
struct TYPE_22__ {int file_baton; int * txdelta_stream; void* fetch_file; int pool; int final_sha1_checksum; int base_md5_checksum; int final_md5_checksum; int fetch_props; void* url; void* remove_props; int base_rev; } ;
typedef TYPE_4__ file_baton_t ;
struct TYPE_23__ {int dir_baton; int relpath; int fetch_props; void* url; struct TYPE_23__* parent_dir; int pool; void* remove_props; int base_rev; } ;
typedef TYPE_5__ dir_baton_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_19__ {int (* change_dir_prop ) (int ,char const*,TYPE_2__ const*,int *) ;int (* change_file_prop ) (int ,char const*,TYPE_2__ const*,int *) ;int (* absent_file ) (int ,int ,int *) ;int (* absent_directory ) (int ,int ,int *) ;int (* delete_entry ) (int ,int ,int ,int *) ;int (* set_target_revision ) (int ,int ,int *) ;} ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int SVN_ERR_XML_UNKNOWN_ENCODING ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 char* SVN_PROP_ENTRY_COMMITTED_DATE ;
 char* SVN_PROP_ENTRY_COMMITTED_REV ;
 char* SVN_PROP_ENTRY_LAST_AUTHOR ;

 void* TRUE ;



 int _ (char*) ;
 void* apr_hash_make (int ) ;
 void* apr_pstrdup (int ,char const*) ;
 int close_file (TYPE_4__*,int *) ;
 int ensure_dir_opened (TYPE_5__*,int *) ;
 int ensure_file_opened (TYPE_4__*,int *) ;
 int fetch_for_dir (TYPE_5__*,int *) ;
 int fetch_for_file (TYPE_4__*,int *) ;
 int maybe_close_dir (TYPE_5__*) ;
 int strcmp (char const*,char*) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,char const*,TYPE_2__ const*,int *) ;
 int stub3 (int ,char const*,TYPE_2__ const*,int *) ;
 int stub4 (int ,int ,int ,int *) ;
 int stub5 (int ,int ,int *) ;
 int stub6 (int ,int ,int *) ;
 int stub7 (int ,char const*,TYPE_2__ const*,int *) ;
 int stub8 (int ,char const*,TYPE_2__ const*,int *) ;
 TYPE_2__* svn_base64_decode_string (TYPE_2__ const*,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (int *,int ,char const*,int ) ;
 int svn_checksum_sha1 ;
 int svn_cstring_atoi64 (int *,char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_hash_sets (void*,void*,char*) ;
 int svn_relpath_join (int ,char const*,int *) ;
 int svn_stream_close (int *) ;

__attribute__((used)) static svn_error_t *
update_closed(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int leaving_state,
              const svn_string_t *cdata,
              apr_hash_t *attrs,
              apr_pool_t *scratch_pool)
{
  report_context_t *ctx = baton;

  switch (leaving_state)
    {
      case 129:
        ctx->done = TRUE;
        break;
      case 131:
        {
          const char *revstr = svn_hash_gets(attrs, "rev");
          apr_int64_t rev;

          SVN_ERR(svn_cstring_atoi64(&rev, revstr));

          SVN_ERR(ctx->editor->set_target_revision(ctx->editor_baton,
                                                   (svn_revnum_t)rev,
                                                   scratch_pool));
        }
        break;

      case 141:
        if (ctx->cur_file)
          ctx->cur_file->url = apr_pstrdup(ctx->cur_file->pool, cdata->data);
        else
          ctx->cur_dir->url = apr_pstrdup(ctx->cur_dir->pool, cdata->data);
        break;

      case 132:
      case 133:
        {
          const char *name = svn_hash_gets(attrs, "name");
          const char *encoding;
          const svn_string_t *value;

          if (leaving_state == 133)
            value = ((void*)0);
          else if ((encoding = svn_hash_gets(attrs, "encoding")))
            {
              if (strcmp(encoding, "base64") != 0)
                return svn_error_createf(SVN_ERR_XML_UNKNOWN_ENCODING, ((void*)0),
                                         _("Got unrecognized encoding '%s'"),
                                         encoding);

              value = svn_base64_decode_string(cdata, scratch_pool);
            }
          else
            value = cdata;

          if (ctx->cur_file)
            {
              file_baton_t *file = ctx->cur_file;

              if (value
                  || ctx->add_props_included
                  || SVN_IS_VALID_REVNUM(file->base_rev))
                {
                  SVN_ERR(ensure_file_opened(file, scratch_pool));

                  SVN_ERR(ctx->editor->change_file_prop(file->file_baton,
                                                        name,
                                                        value,
                                                        scratch_pool));
                }
              else
                {
                  if (!file->remove_props)
                    file->remove_props = apr_hash_make(file->pool);

                  svn_hash_sets(file->remove_props,
                                apr_pstrdup(file->pool, name),
                                "");
                }
            }
          else
            {
              dir_baton_t *dir = ctx->cur_dir;

              if (value
                  || ctx->add_props_included
                  || SVN_IS_VALID_REVNUM(dir->base_rev))
                {
                  SVN_ERR(ensure_dir_opened(dir, scratch_pool));

                  SVN_ERR(ctx->editor->change_dir_prop(dir->dir_baton,
                                                       name,
                                                       value,
                                                       scratch_pool));
                }
              else
                {
                  if (!dir->remove_props)
                    dir->remove_props = apr_hash_make(dir->pool);

                  svn_hash_sets(dir->remove_props,
                                apr_pstrdup(dir->pool, name),
                                "");
                }
            }
        }
        break;

      case 135:
      case 143:
        {
          dir_baton_t *dir = ctx->cur_dir;
          ctx->cur_dir = ctx->cur_dir->parent_dir;

          if (dir->fetch_props && ! dir->url)
            {
              return svn_error_create(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                                      _("The REPORT response did not "
                                        "include the requested checked-in "
                                        "value"));
            }

          if (!dir->fetch_props)
            {
              SVN_ERR(maybe_close_dir(dir));
              break;
            }
          else
            {


              SVN_ERR(fetch_for_dir(dir, scratch_pool));
            }
        }
        break;

      case 134:
      case 142:
        {
          file_baton_t *file = ctx->cur_file;

          ctx->cur_file = ((void*)0);


          if ((file->fetch_file || file->fetch_props) && ! file->url)
            {
              return svn_error_create(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                                      _("The REPORT response did not "
                                        "include the requested checked-in "
                                        "value"));
            }



          if (! file->fetch_file && ! file->fetch_props)
            {
              SVN_ERR(close_file(file, scratch_pool));
              break;
            }
          else
            {



              SVN_ERR(fetch_for_file(file, scratch_pool));
            }
        }
        break;

      case 136:
        SVN_ERR(svn_checksum_parse_hex(&ctx->cur_file->final_md5_checksum,
                                       svn_checksum_md5,
                                       cdata->data,
                                       ctx->cur_file->pool));
        break;

      case 137:
        {
          file_baton_t *file = ctx->cur_file;
          const char *base_checksum = svn_hash_gets(attrs, "base-checksum");
          const char *sha1_checksum = svn_hash_gets(attrs, "sha1-checksum");

          if (base_checksum)
            SVN_ERR(svn_checksum_parse_hex(&file->base_md5_checksum,
                                           svn_checksum_md5, base_checksum,
                                           file->pool));


          if (sha1_checksum && !file->final_sha1_checksum)
            SVN_ERR(svn_checksum_parse_hex(&file->final_sha1_checksum,
                                           svn_checksum_sha1,
                                           sha1_checksum,
                                           file->pool));



          if (! ctx->send_all_mode)
            file->fetch_file = TRUE;
        }
        break;

      case 138:
        {
          const char *name = svn_hash_gets(attrs, "name");
          const char *revstr;
          apr_int64_t delete_rev;

          SVN_ERR(ensure_dir_opened(ctx->cur_dir, scratch_pool));

          revstr = svn_hash_gets(attrs, "rev");

          if (revstr)
            SVN_ERR(svn_cstring_atoi64(&delete_rev, revstr));
          else
            delete_rev = SVN_INVALID_REVNUM;

          SVN_ERR(ctx->editor->delete_entry(
                                    svn_relpath_join(ctx->cur_dir->relpath,
                                                     name,
                                                     scratch_pool),
                                    (svn_revnum_t)delete_rev,
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;

      case 145:
        {
          const char *name = svn_hash_gets(attrs, "name");

          SVN_ERR(ensure_dir_opened(ctx->cur_dir, scratch_pool));

          SVN_ERR(ctx->editor->absent_directory(
                                    svn_relpath_join(ctx->cur_dir->relpath,
                                                     name, scratch_pool),
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;
     case 144:
        {
          const char *name = svn_hash_gets(attrs, "name");

          SVN_ERR(ensure_dir_opened(ctx->cur_dir, scratch_pool));

          SVN_ERR(ctx->editor->absent_file(
                                    svn_relpath_join(ctx->cur_dir->relpath,
                                                     name, scratch_pool),
                                    ctx->cur_dir->dir_baton,
                                    scratch_pool));
        }
        break;

      case 130:
        {
          file_baton_t *file = ctx->cur_file;

          if (file->txdelta_stream)
            {
              SVN_ERR(svn_stream_close(file->txdelta_stream));
              file->txdelta_stream = ((void*)0);
            }
        }
        break;

      case 128:
      case 140:
      case 139:
        {
          const char *propname;

          if (ctx->cur_file)
            SVN_ERR(ensure_file_opened(ctx->cur_file, scratch_pool));
          else if (ctx->cur_dir)
            SVN_ERR(ensure_dir_opened(ctx->cur_dir, scratch_pool));
          else
            break;

          switch (leaving_state)
            {
              case 128:
                propname = SVN_PROP_ENTRY_COMMITTED_REV;
                break;
              case 140:
                propname = SVN_PROP_ENTRY_COMMITTED_DATE;
                break;
              case 139:
                propname = SVN_PROP_ENTRY_LAST_AUTHOR;
                break;
              default:
                SVN_ERR_MALFUNCTION();
            }

          if (ctx->cur_file)
            SVN_ERR(ctx->editor->change_file_prop(ctx->cur_file->file_baton,
                                                  propname, cdata,
                                                  scratch_pool));
          else
            SVN_ERR(ctx->editor->change_dir_prop(ctx->cur_dir->dir_baton,
                                                  propname, cdata,
                                                  scratch_pool));
        }
        break;
    }

  return SVN_NO_ERROR;
}
