; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_update_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_update_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_30__ = type { i32, i32 (i32, %struct.TYPE_27__*, i32*)*, i32, i32, i32, i64 }
%struct.TYPE_27__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.svn_client__dirent_fetcher_baton_t = type { i8*, i8*, i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_notify_skip_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_update_skip_working_only = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_depth_exclude = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_CONFIG_SECTION_HELPERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_DIFF3_CMD = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_USE_COMMIT_TIMES = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_PRESERVED_CF_EXTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A\0D\09\0B \00", align 1
@svn_wc_notify_update_started = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i8* null, align 8
@svn_wc_notify_state_inapplicable = common dso_local global i8* null, align 8
@svn_wc_notify_lock_state_inapplicable = common dso_local global i8* null, align 8
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i64 0, align 8
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@svn_client__dirent_fetcher = common dso_local global i32 0, align 4
@record_conflict = common dso_local global i32* null, align 8
@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (i8**, i32*, i32*, i32**, i8*, i8*, %struct.TYPE_28__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_30__*, i32*, i32*)* @update_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @update_internal(i8** %0, i32* %1, i32* %2, i32** %3, i8* %4, i8* %5, %struct.TYPE_28__* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct.TYPE_30__* %13, i32* %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_30__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca %struct.TYPE_28__, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca %struct.svn_client__dirent_fetcher_baton_t, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32*, align 8
  %58 = alloca %struct.TYPE_29__*, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.TYPE_27__*, align 8
  %62 = alloca i64, align 8
  %63 = alloca %struct.TYPE_27__*, align 8
  %64 = alloca %struct.TYPE_29__*, align 8
  %65 = alloca i8*, align 8
  %66 = alloca i32*, align 8
  %67 = alloca i32*, align 8
  %68 = alloca %struct.TYPE_27__*, align 8
  store i8** %0, i8*** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32* %2, i32** %20, align 8
  store i32** %3, i32*** %21, align 8
  store i8* %4, i8** %22, align 8
  store i8* %5, i8** %23, align 8
  store %struct.TYPE_28__* %6, %struct.TYPE_28__** %24, align 8
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %46, align 4
  %70 = load i32**, i32*** %21, align 8
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %50, align 8
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %56, align 4
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %16
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %82 = call i32* @svn_hash_gets(i64 %80, i32 %81)
  br label %84

83:                                               ; preds = %16
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi i32* [ %82, %77 ], [ null, %83 ]
  store i32* %85, i32** %57, align 8
  %86 = load i8**, i8*** %18, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %90 = load i8**, i8*** %18, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* @svn_depth_unknown, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %26, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i8*, i8** %22, align 8
  %99 = load i8*, i8** %23, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %22, align 8
  %104 = load i32*, i32** %33, align 8
  %105 = call i8* @svn_dirent_basename(i8* %103, i32* %104)
  store i8* %105, i8** %39, align 8
  br label %107

106:                                              ; preds = %97
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  br label %107

107:                                              ; preds = %106, %102
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i32*, i32** %33, align 8
  %114 = load i32*, i32** %33, align 8
  %115 = call i32 @svn_wc__node_get_base(i32* null, i32* null, i8** %41, i8** %40, i8** %42, i32* null, i32 %110, i8* %111, i32 %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i8*, i8** %41, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %155

119:                                              ; preds = %107
  %120 = load i8*, i8** %40, align 8
  %121 = load i8*, i8** %41, align 8
  %122 = load i32*, i32** %33, align 8
  %123 = call i8* @svn_path_url_add_component2(i8* %120, i8* %121, i32* %122)
  store i8* %123, i8** %43, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = load i32*, i32** %33, align 8
  %129 = call %struct.TYPE_29__* @svn_wc_conflicted_p3(i32* %59, i32* %60, i32* null, i32 %126, i8* %127, i32* %128)
  store %struct.TYPE_29__* %129, %struct.TYPE_29__** %58, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %131 = icmp ne %struct.TYPE_29__* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %119
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %140 = call %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__* %139)
  store %struct.TYPE_29__* %140, %struct.TYPE_29__** %17, align 8
  br label %607

141:                                              ; preds = %132, %119
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %143 = call i32 @svn_error_clear(%struct.TYPE_29__* %142)
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %145 = icmp ne %struct.TYPE_29__* %144, null
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %59, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %60, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149, %146
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %56, align 4
  br label %154

154:                                              ; preds = %152, %149, %141
  br label %156

155:                                              ; preds = %107
  store i8* null, i8** %43, align 8
  br label %156

156:                                              ; preds = %155, %154
  %157 = load i8*, i8** %43, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %56, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %164, align 8
  %166 = icmp ne i32 (i32, %struct.TYPE_27__*, i32*)* %165, null
  br i1 %166, label %167, label %188

167:                                              ; preds = %162
  %168 = load i8*, i8** %22, align 8
  %169 = load i32, i32* %56, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @svn_wc_notify_skip_conflicted, align 4
  br label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @svn_wc_notify_update_skip_working_only, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = load i32*, i32** %33, align 8
  %178 = call %struct.TYPE_27__* @svn_wc_create_notify(i8* %168, i32 %176, i32* %177)
  store %struct.TYPE_27__* %178, %struct.TYPE_27__** %61, align 8
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 1
  %181 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %180, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %61, align 8
  %186 = load i32*, i32** %33, align 8
  %187 = call i32 %181(i32 %184, %struct.TYPE_27__* %185, i32* %186)
  br label %188

188:                                              ; preds = %175, %162
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %189, %struct.TYPE_29__** %17, align 8
  br label %607

190:                                              ; preds = %159
  %191 = load i32, i32* %26, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* @svn_depth_infinity, align 4
  %196 = icmp slt i32 %194, %195
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i1 [ false, %190 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %55, align 4
  %200 = load i32, i32* %55, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %262

202:                                              ; preds = %197
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* @svn_depth_exclude, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %202
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 1
  %219 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %218, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32*, i32** %33, align 8
  %224 = call i32 @svn_wc_exclude(i32 %209, i8* %210, i32 %213, i32 %216, i32 (i32, %struct.TYPE_27__*, i32*)* %219, i32 %222, i32* %223)
  %225 = call i32 @SVN_ERR(i32 %224)
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %226, %struct.TYPE_29__** %17, align 8
  br label %607

227:                                              ; preds = %202
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i8*, i8** %22, align 8
  %232 = load i32, i32* @TRUE, align 4
  %233 = load i32, i32* @TRUE, align 4
  %234 = load i32*, i32** %33, align 8
  %235 = call i32 @svn_wc_read_kind2(i64* %62, i32 %230, i8* %231, i32 %232, i32 %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i64, i64* %62, align 8
  %238 = load i64, i64* @svn_node_dir, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %261

240:                                              ; preds = %227
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i8*, i8** %22, align 8
  %245 = load i32, i32* %25, align 4
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 1
  %254 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %253, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32*, i32** %33, align 8
  %259 = call i32 @svn_wc_crop_tree2(i32 %243, i8* %244, i32 %245, i32 %248, i32 %251, i32 (i32, %struct.TYPE_27__*, i32*)* %254, i32 %257, i32* %258)
  %260 = call i32 @SVN_ERR(i32 %259)
  br label %261

261:                                              ; preds = %240, %227
  br label %262

262:                                              ; preds = %261, %197
  %263 = load i8*, i8** %22, align 8
  %264 = load i8*, i8** %23, align 8
  %265 = load i32*, i32** %33, align 8
  %266 = call i32 @is_empty_wc(i32* %46, i8* %263, i8* %264, i32* %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load i32*, i32** %57, align 8
  %269 = load i32, i32* @SVN_CONFIG_SECTION_HELPERS, align 4
  %270 = load i32, i32* @SVN_CONFIG_OPTION_DIFF3_CMD, align 4
  %271 = call i32 @svn_config_get(i32* %268, i8** %47, i32 %269, i32 %270, i8* null)
  %272 = load i8*, i8** %47, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %262
  %275 = load i8*, i8** %47, align 8
  %276 = load i32*, i32** %33, align 8
  %277 = call i32 @svn_path_cstring_to_utf8(i8** %47, i8* %275, i32* %276)
  %278 = call i32 @SVN_ERR(i32 %277)
  br label %279

279:                                              ; preds = %274, %262
  %280 = load i32*, i32** %57, align 8
  %281 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %282 = load i32, i32* @SVN_CONFIG_OPTION_USE_COMMIT_TIMES, align 4
  %283 = load i32, i32* @FALSE, align 4
  %284 = call i32 @svn_config_get_bool(i32* %280, i32* %45, i32 %281, i32 %282, i32 %283)
  %285 = call i32 @SVN_ERR(i32 %284)
  %286 = load i32*, i32** %57, align 8
  %287 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %288 = load i32, i32* @SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, align 4
  %289 = call i32 @svn_config_get(i32* %286, i8** %51, i32 %287, i32 %288, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %290 = load i8*, i8** %51, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %279
  %295 = load i8*, i8** %51, align 8
  %296 = load i32, i32* @FALSE, align 4
  %297 = load i32*, i32** %33, align 8
  %298 = call i32* @svn_cstring_split(i8* %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %296, i32* %297)
  br label %300

299:                                              ; preds = %279
  br label %300

300:                                              ; preds = %299, %294
  %301 = phi i32* [ %298, %294 ], [ null, %299 ]
  store i32* %301, i32** %52, align 8
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %303, align 8
  %305 = icmp ne i32 (i32, %struct.TYPE_27__*, i32*)* %304, null
  br i1 %305, label %306, label %334

306:                                              ; preds = %300
  %307 = load i32, i32* %30, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %334

309:                                              ; preds = %306
  %310 = load i8*, i8** %22, align 8
  %311 = load i32, i32* @svn_wc_notify_update_started, align 4
  %312 = load i32*, i32** %33, align 8
  %313 = call %struct.TYPE_27__* @svn_wc_create_notify(i8* %310, i32 %311, i32* %312)
  store %struct.TYPE_27__* %313, %struct.TYPE_27__** %63, align 8
  %314 = load i8*, i8** @svn_node_none, align 8
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 4
  store i8* %314, i8** %316, align 8
  %317 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 2
  store i8* %317, i8** %319, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 3
  store i8* %317, i8** %321, align 8
  %322 = load i8*, i8** @svn_wc_notify_lock_state_inapplicable, align 8
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 1
  %327 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %326, align 8
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %332 = load i32*, i32** %33, align 8
  %333 = call i32 %327(i32 %330, %struct.TYPE_27__* %331, i32* %332)
  br label %334

334:                                              ; preds = %309, %306, %300
  %335 = load i32*, i32** %50, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %337, label %359

337:                                              ; preds = %334
  %338 = load i32*, i32** %50, align 8
  %339 = load i8*, i8** %43, align 8
  %340 = load i32*, i32** %33, align 8
  %341 = call %struct.TYPE_29__* @svn_ra_reparent(i32* %338, i8* %339, i32* %340)
  store %struct.TYPE_29__* %341, %struct.TYPE_29__** %64, align 8
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %343 = icmp ne %struct.TYPE_29__* %342, null
  br i1 %343, label %344, label %357

344:                                              ; preds = %337
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %352 = call i32 @svn_error_clear(%struct.TYPE_29__* %351)
  store i32* null, i32** %50, align 8
  br label %356

353:                                              ; preds = %344
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %355 = call %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__* %354)
  store %struct.TYPE_29__* %355, %struct.TYPE_29__** %17, align 8
  br label %607

356:                                              ; preds = %350
  br label %358

357:                                              ; preds = %337
  store i8* null, i8** %38, align 8
  br label %358

358:                                              ; preds = %357, %356
  br label %359

359:                                              ; preds = %358, %334
  %360 = load i32*, i32** %50, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %374, label %362

362:                                              ; preds = %359
  %363 = load i8*, i8** %43, align 8
  %364 = load i8*, i8** %23, align 8
  %365 = load i32, i32* @TRUE, align 4
  %366 = load i32, i32* @TRUE, align 4
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %368 = load i32*, i32** %32, align 8
  %369 = load i32*, i32** %33, align 8
  %370 = call i32 @svn_client__open_ra_session_internal(i32** %50, i8** %38, i8* %363, i8* %364, i32* null, i32 %365, i32 %366, %struct.TYPE_30__* %367, i32* %368, i32* %369)
  %371 = call i32 @SVN_ERR(i32 %370)
  %372 = load i32*, i32** %50, align 8
  %373 = load i32**, i32*** %21, align 8
  store i32* %372, i32** %373, align 8
  br label %374

374:                                              ; preds = %362, %359
  %375 = load i8*, i8** %38, align 8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %377, label %392

377:                                              ; preds = %374
  %378 = load i32*, i32** %50, align 8
  %379 = load i32*, i32** %33, align 8
  %380 = call i32 @svn_ra_get_repos_root2(i32* %378, i8** %65, i32* %379)
  %381 = call i32 @SVN_ERR(i32 %380)
  %382 = load i8*, i8** %23, align 8
  %383 = load i8*, i8** %40, align 8
  %384 = load i8*, i8** %65, align 8
  %385 = load i32, i32* %27, align 4
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %387 = load i32*, i32** %33, align 8
  %388 = call i32 @svn_client_relocate2(i8* %382, i8* %383, i8* %384, i32 %385, %struct.TYPE_30__* %386, i32* %387)
  %389 = call i32 @SVN_ERR(i32 %388)
  %390 = load i8*, i8** %65, align 8
  store i8* %390, i8** %40, align 8
  %391 = load i8*, i8** %38, align 8
  store i8* %391, i8** %43, align 8
  br label %392

392:                                              ; preds = %377, %374
  %393 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %394 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  store i64 %395, i64* %396, align 8
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  store i32 %399, i32* %400, align 8
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %392
  %406 = load i64, i64* @svn_opt_revision_head, align 8
  %407 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  store i64 %406, i64* %407, align 8
  br label %408

408:                                              ; preds = %405, %392
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i8*, i8** %22, align 8
  %413 = load i32*, i32** %50, align 8
  %414 = load i32*, i32** %33, align 8
  %415 = call i32 @svn_client__get_revision_number(i8** %44, i32* null, i32 %411, i8* %412, i32* %413, %struct.TYPE_28__* %49, i32* %414)
  %416 = call i32 @SVN_ERR(i32 %415)
  %417 = load i32*, i32** %50, align 8
  %418 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %419 = load i32*, i32** %33, align 8
  %420 = call i32 @svn_ra_has_capability(i32* %417, i32* %54, i32 %418, i32* %419)
  %421 = call i32 @SVN_ERR(i32 %420)
  %422 = load i32*, i32** %50, align 8
  %423 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %53, i32 0, i32 2
  store i32* %422, i32** %423, align 8
  %424 = load i8*, i8** %44, align 8
  %425 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %53, i32 0, i32 1
  store i8* %424, i8** %425, align 8
  %426 = load i8*, i8** %43, align 8
  %427 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %53, i32 0, i32 0
  store i8* %426, i8** %427, align 8
  %428 = load i8*, i8** %22, align 8
  %429 = load i8*, i8** %44, align 8
  %430 = load i32, i32* %25, align 4
  %431 = load i32*, i32** %50, align 8
  %432 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %433 = load i32*, i32** %33, align 8
  %434 = load i32*, i32** %33, align 8
  %435 = call i32 @svn_client__get_inheritable_props(i32** %48, i8* %428, i8* %429, i32 %430, i32* %431, %struct.TYPE_30__* %432, i32* %433, i32* %434)
  %436 = call i32 @SVN_ERR(i32 %435)
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load i8*, i8** %23, align 8
  %441 = load i8*, i8** %39, align 8
  %442 = load i32*, i32** %48, align 8
  %443 = load i32, i32* %45, align 4
  %444 = load i32, i32* %25, align 4
  %445 = load i32, i32* %26, align 4
  %446 = load i32, i32* %28, align 4
  %447 = load i32, i32* %29, align 4
  %448 = load i32, i32* %54, align 4
  %449 = load i32, i32* %46, align 4
  %450 = load i8*, i8** %47, align 8
  %451 = load i32*, i32** %52, align 8
  %452 = load i32, i32* @svn_client__dirent_fetcher, align 4
  %453 = load i32*, i32** %20, align 8
  %454 = icmp ne i32* %453, null
  br i1 %454, label %455, label %457

455:                                              ; preds = %408
  %456 = load i32*, i32** @record_conflict, align 8
  br label %458

457:                                              ; preds = %408
  br label %458

458:                                              ; preds = %457, %455
  %459 = phi i32* [ %456, %455 ], [ null, %457 ]
  %460 = load i32*, i32** %20, align 8
  %461 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %462 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %465 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %468 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %467, i32 0, i32 1
  %469 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %468, align 8
  %470 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32*, i32** %33, align 8
  %474 = load i32*, i32** %33, align 8
  %475 = call i32 @svn_wc__get_update_editor(i32** %34, i8** %35, i8** %44, i32 %439, i8* %440, i8* %441, i32* %442, i32 %443, i32 %444, i32 %445, i32 %446, i32 %447, i32 %448, i32 %449, i8* %450, i32* %451, i32 %452, %struct.svn_client__dirent_fetcher_baton_t* %53, i32* %459, i32* %460, i32* null, i32* null, i32 %463, i32 %466, i32 (i32, %struct.TYPE_27__*, i32*)* %469, i32 %472, i32* %473, i32* %474)
  %476 = call i32 @SVN_ERR(i32 %475)
  %477 = load i32*, i32** %50, align 8
  %478 = load i8*, i8** %44, align 8
  %479 = load i8*, i8** %39, align 8
  %480 = load i32, i32* %54, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %458
  %483 = load i32, i32* %26, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482, %458
  %486 = load i32, i32* %25, align 4
  br label %489

487:                                              ; preds = %482
  %488 = load i32, i32* @svn_depth_unknown, align 4
  br label %489

489:                                              ; preds = %487, %485
  %490 = phi i32 [ %486, %485 ], [ %488, %487 ]
  %491 = load i32, i32* @FALSE, align 4
  %492 = load i32, i32* @FALSE, align 4
  %493 = load i32*, i32** %34, align 8
  %494 = load i8*, i8** %35, align 8
  %495 = load i32*, i32** %33, align 8
  %496 = load i32*, i32** %33, align 8
  %497 = call i32 @svn_ra_do_update3(i32* %477, i32** %36, i8** %37, i8* %478, i8* %479, i32 %490, i32 %491, i32 %492, i32* %493, i8* %494, i32* %495, i32* %496)
  %498 = call i32 @SVN_ERR(i32 %497)
  %499 = load i32, i32* @TRUE, align 4
  %500 = load i32*, i32** %19, align 8
  store i32 %499, i32* %500, align 4
  %501 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %502 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = load i8*, i8** %22, align 8
  %505 = load i32*, i32** %36, align 8
  %506 = load i8*, i8** %37, align 8
  %507 = load i32, i32* @TRUE, align 4
  %508 = load i32, i32* %25, align 4
  %509 = load i32, i32* %26, align 4
  %510 = icmp ne i32 %509, 0
  %511 = xor i1 %510, true
  %512 = zext i1 %511 to i32
  %513 = load i32, i32* %54, align 4
  %514 = icmp ne i32 %513, 0
  %515 = xor i1 %514, true
  %516 = zext i1 %515 to i32
  %517 = load i32, i32* %45, align 4
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %522 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %521, i32 0, i32 3
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %525 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %524, i32 0, i32 1
  %526 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %525, align 8
  %527 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %528 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32*, i32** %33, align 8
  %531 = call i32 @svn_wc_crawl_revisions5(i32 %503, i8* %504, i32* %505, i8* %506, i32 %507, i32 %508, i32 %512, i32 %516, i32 %517, i32 %520, i32 %523, i32 (i32, %struct.TYPE_27__*, i32*)* %526, i32 %529, i32* %530)
  %532 = call i32 @SVN_ERR(i32 %531)
  %533 = load i32, i32* %25, align 4
  %534 = call i64 @SVN_DEPTH_IS_RECURSIVE(i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %489
  %537 = load i32, i32* %55, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %563

539:                                              ; preds = %536, %489
  %540 = load i32, i32* %27, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %563, label %542

542:                                              ; preds = %539
  %543 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %544 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = load i8*, i8** %22, align 8
  %547 = load i32, i32* %25, align 4
  %548 = load i32*, i32** %33, align 8
  %549 = load i32*, i32** %33, align 8
  %550 = call i32 @svn_wc__externals_gather_definitions(i32** %66, i32** %67, i32 %545, i8* %546, i32 %547, i32* %548, i32* %549)
  %551 = call i32 @SVN_ERR(i32 %550)
  %552 = load i32*, i32** %66, align 8
  %553 = load i32*, i32** %67, align 8
  %554 = load i8*, i8** %40, align 8
  %555 = load i8*, i8** %22, align 8
  %556 = load i32, i32* %25, align 4
  %557 = load i32*, i32** %19, align 8
  %558 = load i32*, i32** %50, align 8
  %559 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %560 = load i32*, i32** %33, align 8
  %561 = call i32 @svn_client__handle_externals(i32* %552, i32* %553, i8* %554, i8* %555, i32 %556, i32* %557, i32* %558, %struct.TYPE_30__* %559, i32* %560)
  %562 = call i32 @SVN_ERR(i32 %561)
  br label %563

563:                                              ; preds = %542, %539, %536
  %564 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %565 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %564, i32 0, i32 1
  %566 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %565, align 8
  %567 = icmp ne i32 (i32, %struct.TYPE_27__*, i32*)* %566, null
  br i1 %567, label %568, label %599

568:                                              ; preds = %563
  %569 = load i32, i32* %30, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %599

571:                                              ; preds = %568
  %572 = load i8*, i8** %22, align 8
  %573 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %574 = load i32*, i32** %33, align 8
  %575 = call %struct.TYPE_27__* @svn_wc_create_notify(i8* %572, i32 %573, i32* %574)
  store %struct.TYPE_27__* %575, %struct.TYPE_27__** %68, align 8
  %576 = load i8*, i8** @svn_node_none, align 8
  %577 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %578 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %577, i32 0, i32 4
  store i8* %576, i8** %578, align 8
  %579 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %580 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %581 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %580, i32 0, i32 2
  store i8* %579, i8** %581, align 8
  %582 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %583 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %582, i32 0, i32 3
  store i8* %579, i8** %583, align 8
  %584 = load i8*, i8** @svn_wc_notify_lock_state_inapplicable, align 8
  %585 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %586 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %585, i32 0, i32 1
  store i8* %584, i8** %586, align 8
  %587 = load i8*, i8** %44, align 8
  %588 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %589 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %588, i32 0, i32 0
  store i8* %587, i8** %589, align 8
  %590 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %591 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %590, i32 0, i32 1
  %592 = load i32 (i32, %struct.TYPE_27__*, i32*)*, i32 (i32, %struct.TYPE_27__*, i32*)** %591, align 8
  %593 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %594 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %597 = load i32*, i32** %33, align 8
  %598 = call i32 %592(i32 %595, %struct.TYPE_27__* %596, i32* %597)
  br label %599

599:                                              ; preds = %571, %568, %563
  %600 = load i8**, i8*** %18, align 8
  %601 = icmp ne i8** %600, null
  br i1 %601, label %602, label %605

602:                                              ; preds = %599
  %603 = load i8*, i8** %44, align 8
  %604 = load i8**, i8*** %18, align 8
  store i8* %603, i8** %604, align 8
  br label %605

605:                                              ; preds = %602, %599
  %606 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %606, %struct.TYPE_29__** %17, align 8
  br label %607

607:                                              ; preds = %605, %353, %206, %188, %138
  %608 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  ret %struct.TYPE_29__* %608
}

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_base(i32*, i32*, i8**, i8**, i8**, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_wc_conflicted_p3(i32*, i32*, i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc_exclude(i32, i8*, i32, i32, i32 (i32, %struct.TYPE_27__*, i32*)*, i32, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc_crop_tree2(i32, i8*, i32, i32, i32, i32 (i32, %struct.TYPE_27__*, i32*)*, i32, i32*) #1

declare dso_local i32 @is_empty_wc(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_config_get_bool(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @svn_cstring_split(i8*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i8*, i32*, i32, i32, %struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_client_relocate2(i8*, i8*, i8*, i32, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @svn_client__get_revision_number(i8**, i32*, i32, i8*, i32*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_client__get_inheritable_props(i32**, i8*, i8*, i32, i32*, %struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_update_editor(i32**, i8**, i8**, i32, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, %struct.svn_client__dirent_fetcher_baton_t*, i32*, i32*, i32*, i32*, i32, i32, i32 (i32, %struct.TYPE_27__*, i32*)*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_update3(i32*, i32**, i8**, i8*, i8*, i32, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_crawl_revisions5(i32, i8*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 (i32, %struct.TYPE_27__*, i32*)*, i32, i32*) #1

declare dso_local i64 @SVN_DEPTH_IS_RECURSIVE(i32) #1

declare dso_local i32 @svn_wc__externals_gather_definitions(i32**, i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__handle_externals(i32*, i32*, i8*, i8*, i32, i32*, i32*, %struct.TYPE_30__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
