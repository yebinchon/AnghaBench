; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_propget5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_propget5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64 }
%struct.TYPE_41__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i8* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_44__ = type { i8*, i32 }

@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_committed = common dso_local global i64 0, align 8
@svn_opt_revision_base = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_42__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_42__* @svn_client_propget5(i32** %0, i32** %1, i8* %2, i8* %3, %struct.TYPE_41__* %4, %struct.TYPE_41__* %5, i8** %6, i32 %7, i32* %8, %struct.TYPE_43__* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_41__*, align 8
  %19 = alloca %struct.TYPE_41__*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_43__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_42__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_41__, align 8
  %36 = alloca %struct.TYPE_41__, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca %struct.TYPE_44__*, align 8
  store i32** %0, i32*** %14, align 8
  store i32** %1, i32*** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store %struct.TYPE_41__* %4, %struct.TYPE_41__** %18, align 8
  store %struct.TYPE_41__* %5, %struct.TYPE_41__** %19, align 8
  store i8** %6, i8*** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store %struct.TYPE_43__* %9, %struct.TYPE_43__** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = call %struct.TYPE_42__* @error_if_wcprop_name(i8* %43)
  %45 = call i32 @SVN_ERR(%struct.TYPE_42__* %44)
  %46 = load i8*, i8** %17, align 8
  %47 = call i64 @svn_path_is_url(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %12
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @svn_dirent_is_absolute(i8* %50)
  %52 = call i32 @SVN_ERR_ASSERT(i32 %51)
  br label %53

53:                                               ; preds = %49, %12
  %54 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call %struct.TYPE_41__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_41__* %54, i8* %55)
  store %struct.TYPE_41__* %56, %struct.TYPE_41__** %18, align 8
  %57 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %58 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %59 = call %struct.TYPE_41__* @svn_cl__rev_default_to_peg(%struct.TYPE_41__* %57, %struct.TYPE_41__* %58)
  store %struct.TYPE_41__* %59, %struct.TYPE_41__** %19, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = call i64 @svn_path_is_url(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  %64 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %69, %63, %53
  %76 = phi i1 [ false, %63 ], [ false, %53 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %27, align 4
  %78 = load i32, i32* %27, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @svn_opt_revision_working, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86, %80
  %93 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @svn_opt_revision_working, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %98, %92
  %105 = phi i1 [ true, %92 ], [ %103, %98 ]
  br label %106

106:                                              ; preds = %104, %86, %75
  %107 = phi i1 [ false, %86 ], [ false, %75 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %28, align 4
  %109 = load i32, i32* %27, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %219

111:                                              ; preds = %106
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @svn_opt_revision_committed, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @svn_opt_revision_base, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %117, %111
  %124 = phi i1 [ true, %111 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %30, align 4
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32*, i32** %25, align 8
  %133 = call %struct.TYPE_42__* @svn_wc_read_kind2(i64* %29, i32 %128, i8* %129, i32 %130, i32 %131, i32* %132)
  %134 = call i32 @SVN_ERR(%struct.TYPE_42__* %133)
  %135 = load i64, i64* %29, align 8
  %136 = load i64, i64* @svn_node_unknown, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %123
  %139 = load i64, i64* %29, align 8
  %140 = load i64, i64* @svn_node_none, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138, %123
  %143 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %144 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %145 = load i8*, i8** %17, align 8
  %146 = load i32*, i32** %25, align 8
  %147 = call i32 @svn_dirent_local_style(i8* %145, i32* %146)
  %148 = call %struct.TYPE_42__* @svn_error_createf(i32 %143, i32* null, i32 %144, i32 %147)
  store %struct.TYPE_42__* %148, %struct.TYPE_42__** %13, align 8
  br label %392

149:                                              ; preds = %138
  %150 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %155 = load i32*, i32** %25, align 8
  %156 = call %struct.TYPE_42__* @svn_client__get_revision_number(i8** %26, i32* null, i32 %152, i8* %153, i32* null, %struct.TYPE_41__* %154, i32* %155)
  store %struct.TYPE_42__* %156, %struct.TYPE_42__** %31, align 8
  %157 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %158 = icmp ne %struct.TYPE_42__* %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %149
  %160 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %161 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SVN_ERR_CLIENT_BAD_REVISION, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %167 = call i32 @svn_error_clear(%struct.TYPE_42__* %166)
  %168 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  store i8* %168, i8** %26, align 8
  br label %176

169:                                              ; preds = %159, %149
  %170 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %171 = icmp ne %struct.TYPE_42__* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %174 = call %struct.TYPE_42__* @svn_error_trace(%struct.TYPE_42__* %173)
  store %struct.TYPE_42__* %174, %struct.TYPE_42__** %13, align 8
  br label %392

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %165
  %177 = load i32**, i32*** %15, align 8
  %178 = icmp ne i32** %177, null
  br i1 %178, label %179, label %206

179:                                              ; preds = %176
  %180 = load i32, i32* %28, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = load i32**, i32*** %15, align 8
  %184 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %17, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load i32*, i32** %24, align 8
  %190 = load i32*, i32** %25, align 8
  %191 = call %struct.TYPE_42__* @svn_wc__get_iprops(i32** %183, i32 %186, i8* %187, i8* %188, i32* %189, i32* %190)
  %192 = call i32 @SVN_ERR(%struct.TYPE_42__* %191)
  %193 = load i8*, i8** %17, align 8
  %194 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = load i32*, i32** %25, align 8
  %197 = call %struct.TYPE_42__* @svn_client_get_repos_root(i8** %32, i32* null, i8* %193, %struct.TYPE_43__* %194, i32* %195, i32* %196)
  %198 = call i32 @SVN_ERR(%struct.TYPE_42__* %197)
  %199 = load i32**, i32*** %15, align 8
  %200 = load i32*, i32** %199, align 8
  %201 = load i8*, i8** %32, align 8
  %202 = load i32*, i32** %24, align 8
  %203 = load i32*, i32** %25, align 8
  %204 = call %struct.TYPE_42__* @svn_client__iprop_relpaths_to_urls(i32* %200, i8* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(%struct.TYPE_42__* %204)
  br label %206

206:                                              ; preds = %182, %179, %176
  %207 = load i32**, i32*** %14, align 8
  %208 = load i8*, i8** %16, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* %30, align 4
  %211 = load i64, i64* %29, align 8
  %212 = load i32, i32* %21, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %215 = load i32*, i32** %24, align 8
  %216 = load i32*, i32** %25, align 8
  %217 = call %struct.TYPE_42__* @get_prop_from_wc(i32** %207, i8* %208, i8* %209, i32 %210, i64 %211, i32 %212, i32* %213, %struct.TYPE_43__* %214, i32* %215, i32* %216)
  %218 = call i32 @SVN_ERR(%struct.TYPE_42__* %217)
  br label %219

219:                                              ; preds = %206, %106
  %220 = load i32**, i32*** %15, align 8
  %221 = icmp ne i32** %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %28, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %27, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %384, label %228

228:                                              ; preds = %225, %222
  %229 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %323

240:                                              ; preds = %234, %228
  %241 = load i8*, i8** %17, align 8
  %242 = call i64 @svn_path_is_url(i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* @SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED, align 4
  %246 = call %struct.TYPE_42__* @svn_error_create(i32 %245, i32* null, i32* null)
  store %struct.TYPE_42__* %246, %struct.TYPE_42__** %13, align 8
  br label %392

247:                                              ; preds = %240
  %248 = load i8*, i8** %17, align 8
  %249 = call i32 @svn_dirent_is_absolute(i8* %248)
  %250 = call i32 @SVN_ERR_ASSERT(i32 %249)
  %251 = load i8*, i8** %17, align 8
  store i8* %251, i8** %39, align 8
  %252 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %322

257:                                              ; preds = %247
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %259 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i8*, i8** %39, align 8
  %262 = load i32, i32* @FALSE, align 4
  %263 = load i32*, i32** %24, align 8
  %264 = load i32*, i32** %25, align 8
  %265 = call %struct.TYPE_42__* @svn_wc__node_get_origin(i32* null, i32* null, i8** %37, i8** %38, i32* null, i32* null, i32* null, i32 %260, i8* %261, i32 %262, i32* %263, i32* %264)
  %266 = call i32 @SVN_ERR(%struct.TYPE_42__* %265)
  %267 = load i8*, i8** %37, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %316

269:                                              ; preds = %257
  %270 = load i8*, i8** %38, align 8
  %271 = load i8*, i8** %37, align 8
  %272 = load i32*, i32** %25, align 8
  %273 = call i8* @svn_path_url_add_component2(i8* %270, i8* %271, i32* %272)
  store i8* %273, i8** %17, align 8
  %274 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %294

279:                                              ; preds = %269
  %280 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %281 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i8*, i8** %39, align 8
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %285 = load i32*, i32** %25, align 8
  %286 = call %struct.TYPE_42__* @svn_client__get_revision_number(i8** %40, i32* null, i32 %282, i8* %283, i32* null, %struct.TYPE_41__* %284, i32* %285)
  %287 = call i32 @SVN_ERR(%struct.TYPE_42__* %286)
  %288 = load i8*, i8** @svn_opt_revision_number, align 8
  %289 = ptrtoint i8* %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %36, i32 0, i32 0
  store i64 %289, i64* %290, align 8
  %291 = load i8*, i8** %40, align 8
  %292 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %36, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %292, i32 0, i32 0
  store i8* %291, i8** %293, align 8
  store %struct.TYPE_41__* %36, %struct.TYPE_41__** %18, align 8
  br label %294

294:                                              ; preds = %279, %269
  %295 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %296 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %294
  %301 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i8*, i8** %39, align 8
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %306 = load i32*, i32** %25, align 8
  %307 = call %struct.TYPE_42__* @svn_client__get_revision_number(i8** %41, i32* null, i32 %303, i8* %304, i32* null, %struct.TYPE_41__* %305, i32* %306)
  %308 = call i32 @SVN_ERR(%struct.TYPE_42__* %307)
  %309 = load i8*, i8** @svn_opt_revision_number, align 8
  %310 = ptrtoint i8* %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 0
  store i64 %310, i64* %311, align 8
  %312 = load i8*, i8** %41, align 8
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  store %struct.TYPE_41__* %35, %struct.TYPE_41__** %19, align 8
  br label %315

315:                                              ; preds = %300, %294
  br label %321

316:                                              ; preds = %257
  %317 = load i32, i32* @TRUE, align 4
  store i32 %317, i32* %28, align 4
  %318 = load i32*, i32** %24, align 8
  %319 = call i32* @apr_array_make(i32* %318, i32 0, i32 8)
  %320 = load i32**, i32*** %15, align 8
  store i32* %319, i32** %320, align 8
  br label %321

321:                                              ; preds = %316, %315
  br label %322

322:                                              ; preds = %321, %247
  br label %323

323:                                              ; preds = %322, %234
  %324 = load i32, i32* %27, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* %28, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %383, label %329

329:                                              ; preds = %326, %323
  %330 = load i8*, i8** %17, align 8
  %331 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %332 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %333 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %334 = load i32*, i32** %25, align 8
  %335 = call %struct.TYPE_42__* @svn_client__ra_session_from_path2(i32** %33, %struct.TYPE_44__** %42, i8* %330, i32* null, %struct.TYPE_41__* %331, %struct.TYPE_41__* %332, %struct.TYPE_43__* %333, i32* %334)
  %336 = call i32 @SVN_ERR(%struct.TYPE_42__* %335)
  %337 = load i32*, i32** %33, align 8
  %338 = load %struct.TYPE_44__*, %struct.TYPE_44__** %42, align 8
  %339 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = load i32*, i32** %25, align 8
  %342 = call %struct.TYPE_42__* @svn_ra_check_path(i32* %337, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %340, i64* %34, i32* %341)
  %343 = call i32 @SVN_ERR(%struct.TYPE_42__* %342)
  %344 = load i32, i32* %27, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %329
  %347 = load i32*, i32** %24, align 8
  %348 = call i32* @apr_hash_make(i32* %347)
  %349 = load i32**, i32*** %14, align 8
  store i32* %348, i32** %349, align 8
  br label %350

350:                                              ; preds = %346, %329
  %351 = load i32, i32* %27, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %350
  %354 = load i32**, i32*** %14, align 8
  %355 = load i32*, i32** %354, align 8
  br label %357

356:                                              ; preds = %350
  br label %357

357:                                              ; preds = %356, %353
  %358 = phi i32* [ %355, %353 ], [ null, %356 ]
  %359 = load i32, i32* %28, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = load i32**, i32*** %15, align 8
  br label %364

363:                                              ; preds = %357
  br label %364

364:                                              ; preds = %363, %361
  %365 = phi i32** [ %362, %361 ], [ null, %363 ]
  %366 = load i8*, i8** %16, align 8
  %367 = load %struct.TYPE_44__*, %struct.TYPE_44__** %42, align 8
  %368 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load i64, i64* %34, align 8
  %371 = load %struct.TYPE_44__*, %struct.TYPE_44__** %42, align 8
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = load i32*, i32** %33, align 8
  %375 = load i32, i32* %21, align 4
  %376 = load i32*, i32** %24, align 8
  %377 = load i32*, i32** %25, align 8
  %378 = call %struct.TYPE_42__* @svn_client__remote_propget(i32* %358, i32** %365, i8* %366, i32 %369, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 %370, i8* %373, i32* %374, i32 %375, i32* %376, i32* %377)
  %379 = call i32 @SVN_ERR(%struct.TYPE_42__* %378)
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %42, align 8
  %381 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  store i8* %382, i8** %26, align 8
  br label %383

383:                                              ; preds = %364, %326
  br label %384

384:                                              ; preds = %383, %225
  %385 = load i8**, i8*** %20, align 8
  %386 = icmp ne i8** %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i8*, i8** %26, align 8
  %389 = load i8**, i8*** %20, align 8
  store i8* %388, i8** %389, align 8
  br label %390

390:                                              ; preds = %387, %384
  %391 = load %struct.TYPE_42__*, %struct.TYPE_42__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_42__* %391, %struct.TYPE_42__** %13, align 8
  br label %392

392:                                              ; preds = %390, %244, %172, %142
  %393 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  ret %struct.TYPE_42__* %393
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @error_if_wcprop_name(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_41__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_41__*, i8*) #1

declare dso_local %struct.TYPE_41__* @svn_cl__rev_default_to_peg(%struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64) #1

declare dso_local %struct.TYPE_42__* @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_client__get_revision_number(i8**, i32*, i32, i8*, i32*, %struct.TYPE_41__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @svn_error_trace(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @svn_wc__get_iprops(i32**, i32, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_client_get_repos_root(i8**, i32*, i8*, %struct.TYPE_43__*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_client__iprop_relpaths_to_urls(i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @get_prop_from_wc(i32**, i8*, i8*, i32, i64, i32, i32*, %struct.TYPE_43__*, i32*, i32*) #1

declare dso_local i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i64) #1

declare dso_local %struct.TYPE_42__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_wc__node_get_origin(i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local %struct.TYPE_42__* @svn_client__ra_session_from_path2(i32**, %struct.TYPE_44__**, i8*, i32*, %struct.TYPE_41__*, %struct.TYPE_41__*, %struct.TYPE_43__*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_ra_check_path(i32*, i8*, i8*, i64*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_42__* @svn_client__remote_propget(i32*, i32**, i8*, i32, i8*, i64, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
