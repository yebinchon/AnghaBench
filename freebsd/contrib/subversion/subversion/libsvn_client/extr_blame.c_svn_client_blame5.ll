; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_svn_client_blame5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_svn_client_blame5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_38__ = type { i32, i32 (i32)*, i32 }
%struct.file_rev_baton = type { i64, i64, i8*, i32, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_31__*, %struct.TYPE_32__*, i32*, i32*, i32*, i32, i32*, i64, i32*, %struct.TYPE_38__* }
%struct.TYPE_31__ = type { %struct.blame*, i32*, i32* }
%struct.blame = type { i64, %struct.blame*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i8*, i32* }
%struct.TYPE_32__ = type { %struct.blame*, i32*, i32* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_35__ = type { i32, i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_opt_revision_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_IS_BINARY_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot calculate blame information for binary file '%s'\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@file_rev_handler = common dso_local global i32 0, align 4
@svn_wc_status_normal = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_blame5(i8* %0, %struct.TYPE_37__* %1, %struct.TYPE_37__* %2, %struct.TYPE_37__* %3, i32* %4, i32 %5, i32 %6, i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)* %7, i8* %8, %struct.TYPE_38__* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_38__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.file_rev_baton, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.blame*, align 8
  %29 = alloca %struct.blame*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_39__*, align 8
  %35 = alloca %struct.TYPE_37__, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca %struct.TYPE_36__*, align 8
  %39 = alloca %struct.TYPE_34__*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca %struct.TYPE_37__, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca %struct.TYPE_36__*, align 8
  %46 = alloca i64, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32, align 4
  %53 = alloca %struct.TYPE_35__*, align 8
  store i8* %0, i8** %13, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %14, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %15, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)* %7, i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)** %20, align 8
  store i8* %8, i8** %21, align 8
  store %struct.TYPE_38__* %9, %struct.TYPE_38__** %22, align 8
  store i32* %10, i32** %23, align 8
  store %struct.blame* null, %struct.blame** %29, align 8
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %11
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %11
  %66 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %67 = call i32* @svn_error_create(i32 %66, i32* null, i32* null)
  store i32* %67, i32** %12, align 8
  br label %671

68:                                               ; preds = %59
  %69 = load i8*, i8** %13, align 8
  %70 = call i64 @svn_path_is_url(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8*, i8** %13, align 8
  store i8* %73, i8** %33, align 8
  br label %79

74:                                               ; preds = %68
  %75 = load i8*, i8** %13, align 8
  %76 = load i32*, i32** %23, align 8
  %77 = call i32 @svn_dirent_get_absolute(i8** %33, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %74, %72
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = call i32 @svn_client__ra_session_from_path2(i32** %25, i32* null, i8* %80, i32* null, %struct.TYPE_37__* %81, %struct.TYPE_37__* %82, %struct.TYPE_38__* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %33, align 8
  %91 = load i32*, i32** %25, align 8
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = call i32 @svn_client__get_revision_number(i64* %26, i32* null, i32 %89, i8* %90, i32* %91, %struct.TYPE_37__* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %33, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @svn_client__get_revision_number(i64* %27, i32* null, i32 %98, i8* %99, i32* %100, %struct.TYPE_37__* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i64, i64* @svn_opt_revision_number, align 8
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* %27, align 8
  %109 = call i64 @MAX(i64 %107, i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i32*, i32** %25, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %116 = load i32*, i32** %23, align 8
  %117 = call i32 @svn_client__resolve_rev_and_url(%struct.TYPE_39__** %34, i32* %112, i8* %113, %struct.TYPE_37__* %114, %struct.TYPE_37__* %35, %struct.TYPE_38__* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %25, align 8
  %120 = load %struct.TYPE_39__*, %struct.TYPE_39__** %34, align 8
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %23, align 8
  %124 = call i32 @svn_ra_reparent(i32* %119, i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %229, label %128

128:                                              ; preds = %79
  %129 = load i64, i64* %26, align 8
  %130 = load i64, i64* %27, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %229

132:                                              ; preds = %128
  store i8* null, i8** %37, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i64 @svn_path_is_url(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %26, align 8
  %138 = load i64, i64* %27, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @svn_opt_revision_working, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @svn_opt_revision_base, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %146, %136, %132
  %153 = load i32*, i32** %25, align 8
  %154 = load i64, i64* %27, align 8
  %155 = load i32*, i32** %23, align 8
  %156 = call i32 @svn_ra_get_file(i32* %153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %154, i32* null, i32* null, i32** %36, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32*, i32** %36, align 8
  %159 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %160 = call i8* @svn_prop_get_value(i32* %158, i32 %159)
  store i8* %160, i8** %37, align 8
  br label %205

161:                                              ; preds = %146, %140
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @svn_opt_revision_working, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %33, align 8
  %172 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %173 = load i32*, i32** %23, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = call i32 @svn_wc_prop_get2(%struct.TYPE_36__** %38, i32 %170, i8* %171, i32 %172, i32* %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  br label %195

177:                                              ; preds = %161
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** %33, align 8
  %182 = load i32*, i32** %23, align 8
  %183 = load i32*, i32** %23, align 8
  %184 = call i32 @svn_wc_get_pristine_props(i32** %36, i32 %180, i8* %181, i32* %182, i32* %183)
  %185 = call i32 @SVN_ERR(i32 %184)
  %186 = load i32*, i32** %36, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %177
  %189 = load i32*, i32** %36, align 8
  %190 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %191 = call %struct.TYPE_36__* @svn_hash_gets(i32* %189, i32 %190)
  br label %193

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi %struct.TYPE_36__* [ %191, %188 ], [ null, %192 ]
  store %struct.TYPE_36__* %194, %struct.TYPE_36__** %38, align 8
  br label %195

195:                                              ; preds = %193, %167
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %38, align 8
  %197 = icmp ne %struct.TYPE_36__* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %38, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  br label %203

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %198
  %204 = phi i8* [ %201, %198 ], [ null, %202 ]
  store i8* %204, i8** %37, align 8
  br label %205

205:                                              ; preds = %203, %152
  %206 = load i8*, i8** %37, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load i8*, i8** %37, align 8
  %210 = call i64 @svn_mime_type_is_binary(i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %208
  %213 = load i32, i32* @SVN_ERR_CLIENT_IS_BINARY_FILE, align 4
  %214 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i8*, i8** %13, align 8
  %216 = call i64 @svn_path_is_url(i8* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i8*, i8** %13, align 8
  br label %224

220:                                              ; preds = %212
  %221 = load i8*, i8** %13, align 8
  %222 = load i32*, i32** %23, align 8
  %223 = call i8* @svn_dirent_local_style(i8* %221, i32* %222)
  br label %224

224:                                              ; preds = %220, %218
  %225 = phi i8* [ %219, %218 ], [ %223, %220 ]
  %226 = call i32* @svn_error_createf(i32 %213, i32 0, i32 %214, i8* %225)
  store i32* %226, i32** %12, align 8
  br label %671

227:                                              ; preds = %208
  br label %228

228:                                              ; preds = %227, %205
  br label %229

229:                                              ; preds = %228, %128, %79
  %230 = load i64, i64* %26, align 8
  %231 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 0
  store i64 %230, i64* %231, align 8
  %232 = load i64, i64* %27, align 8
  %233 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 1
  store i64 %232, i64* %233, align 8
  %234 = load i8*, i8** %13, align 8
  %235 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 2
  store i8* %234, i8** %235, align 8
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %237 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 20
  store %struct.TYPE_38__* %236, %struct.TYPE_38__** %237, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 14
  store i32* %238, i32** %239, align 8
  %240 = load i32, i32* %19, align 4
  %241 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 3
  store i32 %240, i32* %241, align 8
  %242 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 4
  store i8* null, i8** %242, align 8
  %243 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 13
  store i32* null, i32** %243, align 8
  %244 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 19
  store i32* null, i32** %244, align 8
  %245 = load i32*, i32** %23, align 8
  %246 = call i8* @apr_palloc(i32* %245, i32 24)
  %247 = bitcast i8* %246 to %struct.TYPE_31__*
  %248 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  store %struct.TYPE_31__* %247, %struct.TYPE_31__** %248, align 8
  %249 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  store %struct.blame* null, %struct.blame** %251, align 8
  %252 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 2
  store i32* null, i32** %254, align 8
  %255 = load i32*, i32** %23, align 8
  %256 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 1
  store i32* %255, i32** %258, align 8
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %229
  %262 = load i32*, i32** %23, align 8
  %263 = call i8* @apr_palloc(i32* %262, i32 24)
  %264 = bitcast i8* %263 to %struct.TYPE_32__*
  %265 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  store %struct.TYPE_32__* %264, %struct.TYPE_32__** %265, align 8
  %266 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 0
  store %struct.blame* null, %struct.blame** %268, align 8
  %269 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 2
  store i32* null, i32** %271, align 8
  %272 = load i32*, i32** %23, align 8
  %273 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %274, i32 0, i32 1
  store i32* %272, i32** %275, align 8
  br label %276

276:                                              ; preds = %261, %229
  %277 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %278, %280
  %282 = zext i1 %281 to i32
  %283 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 5
  store i32 %282, i32* %283, align 8
  %284 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %285 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 18
  store i64 %284, i64* %285, align 8
  %286 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 17
  store i32* null, i32** %286, align 8
  %287 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %276
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  br label %294

294:                                              ; preds = %290, %276
  %295 = phi i1 [ false, %276 ], [ %293, %290 ]
  %296 = zext i1 %295 to i32
  %297 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 6
  store i32 %296, i32* %297, align 4
  %298 = load i32*, i32** %25, align 8
  %299 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 16
  %300 = load i32*, i32** %23, align 8
  %301 = call i32 @svn_ra_get_repos_root2(i32* %298, i32* %299, i32* %300)
  %302 = call i32 @SVN_ERR(i32 %301)
  %303 = load i32*, i32** %23, align 8
  %304 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 15
  store i32* %303, i32** %304, align 8
  %305 = load i32*, i32** %23, align 8
  %306 = call i8* @svn_pool_create(i32* %305)
  %307 = bitcast i8* %306 to i32*
  %308 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 10
  store i32* %307, i32** %308, align 8
  %309 = load i32*, i32** %23, align 8
  %310 = call i8* @svn_pool_create(i32* %309)
  %311 = bitcast i8* %310 to i32*
  %312 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 9
  store i32* %311, i32** %312, align 8
  %313 = load i32, i32* %19, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %294
  %316 = load i32*, i32** %23, align 8
  %317 = call i8* @svn_pool_create(i32* %316)
  %318 = bitcast i8* %317 to i32*
  %319 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 8
  store i32* %318, i32** %319, align 8
  %320 = load i32*, i32** %23, align 8
  %321 = call i8* @svn_pool_create(i32* %320)
  %322 = bitcast i8* %321 to i32*
  %323 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 7
  store i32* %322, i32** %323, align 8
  br label %324

324:                                              ; preds = %315, %294
  %325 = load i32*, i32** %25, align 8
  %326 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i64, i64* %26, align 8
  br label %335

331:                                              ; preds = %324
  %332 = load i64, i64* %26, align 8
  %333 = sub nsw i64 %332, 1
  %334 = call i64 @MAX(i64 0, i64 %333)
  br label %335

335:                                              ; preds = %331, %329
  %336 = phi i64 [ %330, %329 ], [ %334, %331 ]
  %337 = load i64, i64* %27, align 8
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* @file_rev_handler, align 4
  %340 = load i32*, i32** %23, align 8
  %341 = call i32 @svn_ra_get_file_revs2(i32* %325, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %336, i64 %337, i32 %338, i32 %339, %struct.file_rev_baton* %24, i32* %340)
  %342 = call i32 @SVN_ERR(i32 %341)
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @svn_opt_revision_working, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %457

348:                                              ; preds = %335
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i8*, i8** %33, align 8
  %353 = load i32*, i32** %23, align 8
  %354 = load i32*, i32** %23, align 8
  %355 = call i32 @svn_wc_status3(%struct.TYPE_34__** %39, i32 %351, i8* %352, i32* %353, i32* %354)
  %356 = call i32 @SVN_ERR(i32 %355)
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %39, align 8
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @svn_wc_status_normal, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %374, label %362

362:                                              ; preds = %348
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %39, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @svn_wc_status_normal, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %456

368:                                              ; preds = %362
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %39, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @svn_wc_status_none, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %456

374:                                              ; preds = %368, %348
  %375 = load i32, i32* @FALSE, align 4
  store i32 %375, i32* %43, align 4
  %376 = load %struct.TYPE_34__*, %struct.TYPE_34__** %39, align 8
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @svn_wc_status_none, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %403

381:                                              ; preds = %374
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = load i8*, i8** %33, align 8
  %386 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %387 = load i32*, i32** %23, align 8
  %388 = load i32*, i32** %23, align 8
  %389 = call i32 @svn_wc_prop_get2(%struct.TYPE_36__** %45, i32 %384, i8* %385, i32 %386, i32* %387, i32* %388)
  %390 = call i32 @SVN_ERR(i32 %389)
  %391 = load %struct.TYPE_36__*, %struct.TYPE_36__** %45, align 8
  %392 = icmp ne %struct.TYPE_36__* %391, null
  br i1 %392, label %393, label %402

393:                                              ; preds = %381
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %45, align 8
  %395 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 @svn_subst_eol_style_from_value(i64* %46, i8** %47, i8* %396)
  %398 = load i64, i64* %46, align 8
  %399 = load i64, i64* @svn_subst_eol_style_native, align 8
  %400 = icmp eq i64 %398, %399
  %401 = zext i1 %400 to i32
  store i32 %401, i32* %43, align 4
  br label %402

402:                                              ; preds = %393, %381
  br label %403

403:                                              ; preds = %402, %374
  %404 = load i64, i64* @svn_opt_revision_working, align 8
  %405 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 0
  store i64 %404, i64* %405, align 8
  %406 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %407 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i8*, i8** %33, align 8
  %410 = load i32, i32* @FALSE, align 4
  %411 = load i32, i32* %43, align 4
  %412 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 1
  %414 = load i32 (i32)*, i32 (i32)** %413, align 8
  %415 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %416 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32*, i32** %23, align 8
  %419 = load i32*, i32** %23, align 8
  %420 = call i32 @svn_client__get_normalized_stream(i32** %40, i32 %408, i8* %409, %struct.TYPE_37__* %42, i32 %410, i32 %411, i32 (i32)* %414, i32 %417, i32* %418, i32* %419)
  %421 = call i32 @SVN_ERR(i32 %420)
  %422 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %423 = load i32*, i32** %23, align 8
  %424 = load i32*, i32** %23, align 8
  %425 = call i32 @svn_stream_open_unique(i32** %41, i8** %44, i32* null, i32 %422, i32* %423, i32* %424)
  %426 = call i32 @SVN_ERR(i32 %425)
  %427 = load i32*, i32** %40, align 8
  %428 = load i32*, i32** %41, align 8
  %429 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %429, i32 0, i32 1
  %431 = load i32 (i32)*, i32 (i32)** %430, align 8
  %432 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %433 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32*, i32** %23, align 8
  %436 = call i32 @svn_stream_copy3(i32* %427, i32* %428, i32 (i32)* %431, i32 %434, i32* %435)
  %437 = call i32 @SVN_ERR(i32 %436)
  %438 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 4
  %439 = load i8*, i8** %438, align 8
  %440 = load i8*, i8** %44, align 8
  %441 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %442 = load %struct.TYPE_31__*, %struct.TYPE_31__** %441, align 8
  %443 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 14
  %444 = load i32*, i32** %443, align 8
  %445 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %446 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %445, i32 0, i32 1
  %447 = load i32 (i32)*, i32 (i32)** %446, align 8
  %448 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %449 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32*, i32** %23, align 8
  %452 = call i32 @add_file_blame(i8* %439, i8* %440, %struct.TYPE_31__* %442, i32* null, i32* %444, i32 (i32)* %447, i32 %450, i32* %451)
  %453 = call i32 @SVN_ERR(i32 %452)
  %454 = load i8*, i8** %44, align 8
  %455 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 4
  store i8* %454, i8** %455, align 8
  br label %456

456:                                              ; preds = %403, %368, %362
  br label %457

457:                                              ; preds = %456, %335
  %458 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 4
  %459 = load i8*, i8** %458, align 8
  %460 = icmp ne i8* %459, null
  %461 = zext i1 %460 to i32
  %462 = call i32 @SVN_ERR_ASSERT(i32 %461)
  %463 = load i32*, i32** %23, align 8
  %464 = call i8* @svn_pool_create(i32* %463)
  %465 = bitcast i8* %464 to i32*
  store i32* %465, i32** %30, align 8
  %466 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 4
  %467 = load i8*, i8** %466, align 8
  %468 = load i32*, i32** %23, align 8
  %469 = load i32*, i32** %23, align 8
  %470 = call i32 @svn_stream_open_readonly(i32** %31, i8* %467, i32* %468, i32* %469)
  %471 = call i32 @SVN_ERR(i32 %470)
  %472 = load i32*, i32** %31, align 8
  %473 = load i32, i32* @TRUE, align 4
  %474 = load i32, i32* @FALSE, align 4
  %475 = load i32*, i32** %23, align 8
  %476 = call i32* @svn_subst_stream_translated(i32* %472, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %473, i32* null, i32 %474, i32* %475)
  store i32* %476, i32** %32, align 8
  %477 = load i32, i32* %19, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %505

479:                                              ; preds = %457
  %480 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %481 = load %struct.TYPE_31__*, %struct.TYPE_31__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %481, i32 0, i32 0
  %483 = load %struct.blame*, %struct.blame** %482, align 8
  %484 = icmp ne %struct.blame* %483, null
  br i1 %484, label %494, label %485

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %487 = load %struct.TYPE_31__*, %struct.TYPE_31__** %486, align 8
  %488 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 13
  %489 = load i32*, i32** %488, align 8
  %490 = call %struct.blame* @blame_create(%struct.TYPE_31__* %487, i32* %489, i32 0)
  %491 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %492 = load %struct.TYPE_31__*, %struct.TYPE_31__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %492, i32 0, i32 0
  store %struct.blame* %490, %struct.blame** %493, align 8
  br label %494

494:                                              ; preds = %485, %479
  %495 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %496 = load %struct.TYPE_31__*, %struct.TYPE_31__** %495, align 8
  %497 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %497, align 8
  %499 = load i32*, i32** %23, align 8
  %500 = call i32 @normalize_blames(%struct.TYPE_31__* %496, %struct.TYPE_32__* %498, i32* %499)
  %501 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 12
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i32 0, i32 0
  %504 = load %struct.blame*, %struct.blame** %503, align 8
  store %struct.blame* %504, %struct.blame** %29, align 8
  br label %505

505:                                              ; preds = %494, %457
  %506 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 11
  %507 = load %struct.TYPE_31__*, %struct.TYPE_31__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %507, i32 0, i32 0
  %509 = load %struct.blame*, %struct.blame** %508, align 8
  store %struct.blame* %509, %struct.blame** %28, align 8
  br label %510

510:                                              ; preds = %644, %505
  %511 = load %struct.blame*, %struct.blame** %28, align 8
  %512 = icmp ne %struct.blame* %511, null
  br i1 %512, label %513, label %648

513:                                              ; preds = %510
  %514 = load %struct.blame*, %struct.blame** %29, align 8
  %515 = icmp ne %struct.blame* %514, null
  br i1 %515, label %516, label %532

516:                                              ; preds = %513
  %517 = load %struct.blame*, %struct.blame** %29, align 8
  %518 = getelementptr inbounds %struct.blame, %struct.blame* %517, i32 0, i32 2
  %519 = load %struct.TYPE_33__*, %struct.TYPE_33__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %49, align 8
  %522 = load %struct.blame*, %struct.blame** %29, align 8
  %523 = getelementptr inbounds %struct.blame, %struct.blame* %522, i32 0, i32 2
  %524 = load %struct.TYPE_33__*, %struct.TYPE_33__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %524, i32 0, i32 2
  %526 = load i32*, i32** %525, align 8
  store i32* %526, i32** %51, align 8
  %527 = load %struct.blame*, %struct.blame** %29, align 8
  %528 = getelementptr inbounds %struct.blame, %struct.blame* %527, i32 0, i32 2
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  store i8* %531, i8** %50, align 8
  br label %534

532:                                              ; preds = %513
  %533 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %533, i64* %49, align 8
  store i32* null, i32** %51, align 8
  store i8* null, i8** %50, align 8
  br label %534

534:                                              ; preds = %532, %516
  %535 = load %struct.blame*, %struct.blame** %28, align 8
  %536 = getelementptr inbounds %struct.blame, %struct.blame* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %48, align 8
  br label %538

538:                                              ; preds = %633, %534
  %539 = load %struct.blame*, %struct.blame** %28, align 8
  %540 = getelementptr inbounds %struct.blame, %struct.blame* %539, i32 0, i32 1
  %541 = load %struct.blame*, %struct.blame** %540, align 8
  %542 = icmp ne %struct.blame* %541, null
  br i1 %542, label %543, label %551

543:                                              ; preds = %538
  %544 = load i64, i64* %48, align 8
  %545 = load %struct.blame*, %struct.blame** %28, align 8
  %546 = getelementptr inbounds %struct.blame, %struct.blame* %545, i32 0, i32 1
  %547 = load %struct.blame*, %struct.blame** %546, align 8
  %548 = getelementptr inbounds %struct.blame, %struct.blame* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = icmp slt i64 %544, %549
  br label %551

551:                                              ; preds = %543, %538
  %552 = phi i1 [ true, %538 ], [ %550, %543 ]
  br i1 %552, label %553, label %636

553:                                              ; preds = %551
  %554 = load i32*, i32** %30, align 8
  %555 = call i32 @svn_pool_clear(i32* %554)
  %556 = load i32*, i32** %32, align 8
  %557 = load i32*, i32** %30, align 8
  %558 = call i32 @svn_stream_readline(i32* %556, %struct.TYPE_35__** %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %52, i32* %557)
  %559 = call i32 @SVN_ERR(i32 %558)
  %560 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %561 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %560, i32 0, i32 1
  %562 = load i32 (i32)*, i32 (i32)** %561, align 8
  %563 = icmp ne i32 (i32)* %562, null
  br i1 %563, label %564, label %573

564:                                              ; preds = %553
  %565 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %566 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %565, i32 0, i32 1
  %567 = load i32 (i32)*, i32 (i32)** %566, align 8
  %568 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %569 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = call i32 %567(i32 %570)
  %572 = call i32 @SVN_ERR(i32 %571)
  br label %573

573:                                              ; preds = %564, %553
  %574 = load i32, i32* %52, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %573
  %577 = load %struct.TYPE_35__*, %struct.TYPE_35__** %53, align 8
  %578 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %577, i32 0, i32 1
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %628

581:                                              ; preds = %576, %573
  %582 = load %struct.blame*, %struct.blame** %28, align 8
  %583 = getelementptr inbounds %struct.blame, %struct.blame* %582, i32 0, i32 2
  %584 = load %struct.TYPE_33__*, %struct.TYPE_33__** %583, align 8
  %585 = icmp ne %struct.TYPE_33__* %584, null
  br i1 %585, label %586, label %612

586:                                              ; preds = %581
  %587 = load i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)*, i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)** %20, align 8
  %588 = load i8*, i8** %21, align 8
  %589 = load i64, i64* %26, align 8
  %590 = load i64, i64* %27, align 8
  %591 = load i64, i64* %48, align 8
  %592 = load %struct.blame*, %struct.blame** %28, align 8
  %593 = getelementptr inbounds %struct.blame, %struct.blame* %592, i32 0, i32 2
  %594 = load %struct.TYPE_33__*, %struct.TYPE_33__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %594, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = load %struct.blame*, %struct.blame** %28, align 8
  %598 = getelementptr inbounds %struct.blame, %struct.blame* %597, i32 0, i32 2
  %599 = load %struct.TYPE_33__*, %struct.TYPE_33__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %599, i32 0, i32 2
  %601 = load i32*, i32** %600, align 8
  %602 = load i64, i64* %49, align 8
  %603 = load i32*, i32** %51, align 8
  %604 = load i8*, i8** %50, align 8
  %605 = load %struct.TYPE_35__*, %struct.TYPE_35__** %53, align 8
  %606 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = load i32, i32* @FALSE, align 4
  %609 = load i32*, i32** %30, align 8
  %610 = call i32 %587(i8* %588, i64 %589, i64 %590, i64 %591, i64 %596, i32* %601, i64 %602, i32* %603, i8* %604, i32 %607, i32 %608, i32* %609)
  %611 = call i32 @SVN_ERR(i32 %610)
  br label %627

612:                                              ; preds = %581
  %613 = load i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)*, i32 (i8*, i64, i64, i64, i64, i32*, i64, i32*, i8*, i32, i32, i32*)** %20, align 8
  %614 = load i8*, i8** %21, align 8
  %615 = load i64, i64* %26, align 8
  %616 = load i64, i64* %27, align 8
  %617 = load i64, i64* %48, align 8
  %618 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %619 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %620 = load %struct.TYPE_35__*, %struct.TYPE_35__** %53, align 8
  %621 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load i32, i32* @TRUE, align 4
  %624 = load i32*, i32** %30, align 8
  %625 = call i32 %613(i8* %614, i64 %615, i64 %616, i64 %617, i64 %618, i32* null, i64 %619, i32* null, i8* null, i32 %622, i32 %623, i32* %624)
  %626 = call i32 @SVN_ERR(i32 %625)
  br label %627

627:                                              ; preds = %612, %586
  br label %628

628:                                              ; preds = %627, %576
  %629 = load i32, i32* %52, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %628
  br label %636

632:                                              ; preds = %628
  br label %633

633:                                              ; preds = %632
  %634 = load i64, i64* %48, align 8
  %635 = add nsw i64 %634, 1
  store i64 %635, i64* %48, align 8
  br label %538

636:                                              ; preds = %631, %551
  %637 = load %struct.blame*, %struct.blame** %29, align 8
  %638 = icmp ne %struct.blame* %637, null
  br i1 %638, label %639, label %643

639:                                              ; preds = %636
  %640 = load %struct.blame*, %struct.blame** %29, align 8
  %641 = getelementptr inbounds %struct.blame, %struct.blame* %640, i32 0, i32 1
  %642 = load %struct.blame*, %struct.blame** %641, align 8
  store %struct.blame* %642, %struct.blame** %29, align 8
  br label %643

643:                                              ; preds = %639, %636
  br label %644

644:                                              ; preds = %643
  %645 = load %struct.blame*, %struct.blame** %28, align 8
  %646 = getelementptr inbounds %struct.blame, %struct.blame* %645, i32 0, i32 1
  %647 = load %struct.blame*, %struct.blame** %646, align 8
  store %struct.blame* %647, %struct.blame** %28, align 8
  br label %510

648:                                              ; preds = %510
  %649 = load i32*, i32** %32, align 8
  %650 = call i32 @svn_stream_close(i32* %649)
  %651 = call i32 @SVN_ERR(i32 %650)
  %652 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 10
  %653 = load i32*, i32** %652, align 8
  %654 = call i32 @svn_pool_destroy(i32* %653)
  %655 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 9
  %656 = load i32*, i32** %655, align 8
  %657 = call i32 @svn_pool_destroy(i32* %656)
  %658 = load i32, i32* %19, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %667

660:                                              ; preds = %648
  %661 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 8
  %662 = load i32*, i32** %661, align 8
  %663 = call i32 @svn_pool_destroy(i32* %662)
  %664 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 7
  %665 = load i32*, i32** %664, align 8
  %666 = call i32 @svn_pool_destroy(i32* %665)
  br label %667

667:                                              ; preds = %660, %648
  %668 = load i32*, i32** %30, align 8
  %669 = call i32 @svn_pool_destroy(i32* %668)
  %670 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %670, i32** %12, align 8
  br label %671

671:                                              ; preds = %667, %224, %65
  %672 = load i32*, i32** %12, align 8
  ret i32* %672
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, i32*, i8*, i32*, %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @svn_client__get_revision_number(i64*, i32*, i32, i8*, i32*, %struct.TYPE_37__*, i32*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @svn_client__resolve_rev_and_url(%struct.TYPE_39__**, i32*, i8*, %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i32, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i64, i32*, i32*, i32**, i32*) #1

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

declare dso_local i32 @svn_wc_prop_get2(%struct.TYPE_36__**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @svn_mime_type_is_binary(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i32*, i32*) #1

declare dso_local i8* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_ra_get_file_revs2(i32*, i8*, i64, i64, i32, i32, %struct.file_rev_baton*, i32*) #1

declare dso_local i32 @svn_wc_status3(%struct.TYPE_34__**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i64*, i8**, i8*) #1

declare dso_local i32 @svn_client__get_normalized_stream(i32**, i32, i8*, %struct.TYPE_37__*, i32, i32, i32 (i32)*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32 (i32)*, i32, i32*) #1

declare dso_local i32 @add_file_blame(i8*, i8*, %struct.TYPE_31__*, i32*, i32*, i32 (i32)*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local %struct.blame* @blame_create(%struct.TYPE_31__*, i32*, i32) #1

declare dso_local i32 @normalize_blames(%struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_35__**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
