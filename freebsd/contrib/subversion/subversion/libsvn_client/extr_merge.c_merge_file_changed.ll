; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_23__*, i64, %struct.TYPE_18__*, i32, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.merge_file_baton_t = type { i64, i32, i32, i64 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_update = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_notify_state_unchanged = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".working%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c".merge-left.r%ld%s%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c".merge-right.r%ld%s%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@svn_wc_merge_unchanged = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i64 0, align 8
@svn_wc_merge_merged = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i64 0, align 8
@svn_wc_merge_no_merge = common dso_local global i32 0, align 4
@svn_wc_notify_state_missing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_19__*, %struct.TYPE_19__*, i8*, i8*, i32*, i32*, i64, %struct.TYPE_22__*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file_changed(i8* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i64 %7, %struct.TYPE_22__* %8, i8* %9, %struct.svn_diff_tree_processor_t* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_21__*, align 8
  %27 = alloca %struct.merge_file_baton_t*, align 8
  %28 = alloca %struct.TYPE_20__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i64 %7, i64* %21, align 8
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %22, align 8
  store i8* %9, i8** %23, align 8
  store %struct.svn_diff_tree_processor_t* %10, %struct.svn_diff_tree_processor_t** %24, align 8
  store i32* %11, i32** %25, align 8
  %40 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %24, align 8
  %41 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %26, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = bitcast i8* %43 to %struct.merge_file_baton_t*
  store %struct.merge_file_baton_t* %44, %struct.merge_file_baton_t** %27, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %28, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = call i8* @svn_dirent_join(i32 %52, i8* %53, i32* %54)
  store i8* %55, i8** %29, align 8
  %56 = load i8*, i8** %29, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %12
  %59 = load i8*, i8** %29, align 8
  %60 = call i64 @svn_dirent_is_absolute(i8* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %58, %12
  %63 = phi i1 [ false, %12 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @SVN_ERR_ASSERT(i32 %64)
  %66 = load i8*, i8** %17, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i8*, i8** %17, align 8
  %70 = call i64 @svn_dirent_is_absolute(i8* %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %68, %62
  %73 = phi i1 [ true, %62 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @SVN_ERR_ASSERT(i32 %74)
  %76 = load i8*, i8** %18, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i8*, i8** %18, align 8
  %80 = call i64 @svn_dirent_is_absolute(i8* %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi i1 [ true, %72 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @SVN_ERR_ASSERT(i32 %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %87 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %27, align 8
  %88 = load i8*, i8** %29, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = call i32 @mark_file_edited(%struct.TYPE_21__* %86, %struct.merge_file_baton_t* %87, i8* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %27, align 8
  %93 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %82
  %97 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %27, align 8
  %98 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %104 = load i8*, i8** %29, align 8
  %105 = load i32, i32* @svn_node_file, align 4
  %106 = load i32, i32* @svn_wc_notify_update_shadowed_update, align 4
  %107 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %27, align 8
  %108 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %27, align 8
  %111 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %25, align 8
  %114 = call i32 @record_skip(%struct.TYPE_21__* %103, i8* %104, i32 %105, i32 %106, i32 %109, i32 %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  br label %116

116:                                              ; preds = %102, %96
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %13, align 8
  br label %387

118:                                              ; preds = %82
  %119 = load i64, i64* @svn_wc_notify_state_unchanged, align 8
  store i64 %119, i64* %33, align 8
  %120 = load i64, i64* @svn_wc_notify_state_unchanged, align 8
  store i64 %120, i64* %32, align 8
  %121 = load i8*, i8** %29, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %124 = load i32*, i32** %25, align 8
  %125 = load i32*, i32** %25, align 8
  %126 = call i32 @prepare_merge_props_changed(%struct.TYPE_22__** %22, i8* %121, %struct.TYPE_22__* %122, %struct.TYPE_21__* %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i8*, i8** %29, align 8
  %129 = load i32, i32* @svn_node_file, align 4
  %130 = load i32, i32* @svn_node_file, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = load i32*, i32** %25, align 8
  %137 = load i32*, i32** %25, align 8
  %138 = call i32 @make_conflict_versions(i32** %30, i32** %31, i8* %128, i32 %129, i32 %130, i32* %132, %struct.TYPE_18__* %135, i32* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %118
  %145 = load i8*, i8** %17, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %185, label %147

147:                                              ; preds = %144, %118
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %147
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %29, align 8
  %157 = load i32*, i32** %30, align 8
  %158 = load i32*, i32** %31, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %25, align 8
  %171 = call i32 @svn_wc_merge_props3(i64* %33, i32 %155, i8* %156, i32* %157, i32* %158, i32* %159, %struct.TYPE_22__* %160, i32 %163, i32* null, i32* null, i32 %166, i32 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load i64, i64* %33, align 8
  %174 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %152
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load i8*, i8** %29, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @alloc_and_store_path(i32* %178, i8* %179, i32 %182)
  br label %184

184:                                              ; preds = %176, %152
  br label %185

185:                                              ; preds = %184, %147, %144
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %352

191:                                              ; preds = %185
  %192 = load i8*, i8** %17, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %351

194:                                              ; preds = %191
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = icmp ne %struct.TYPE_23__* %197, null
  br i1 %198, label %199, label %223

199:                                              ; preds = %194
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load i8*, i8** %29, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = call i32 @svn_path_splitext(i32* null, i8** %39, i8* %207, i32* %208)
  %210 = load i8*, i8** %39, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %206
  %215 = load i8*, i8** %39, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = call i64 @svn_cstring_match_glob_list(i8* %215, %struct.TYPE_23__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %214, %206
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  br label %222

222:                                              ; preds = %221, %214
  br label %223

223:                                              ; preds = %222, %199, %194
  %224 = load i32*, i32** %25, align 8
  %225 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %226 = load i8*, i8** %39, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %232 = load i8*, i8** %39, align 8
  %233 = call i8* (i32*, i32, i8*, i8*, ...) @apr_psprintf(i32* %224, i32 %225, i8* %231, i8* %232)
  store i8* %233, i8** %36, align 8
  %234 = load i32*, i32** %25, align 8
  %235 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = load i8*, i8** %39, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %247 = load i8*, i8** %39, align 8
  %248 = call i8* (i32*, i32, i8*, i8*, ...) @apr_psprintf(i32* %234, i32 %235, i8* %240, i8* %246, i8* %247)
  store i8* %248, i8** %37, align 8
  %249 = load i32*, i32** %25, align 8
  %250 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = load i8*, i8** %39, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %262 = load i8*, i8** %39, align 8
  %263 = call i8* (i32*, i32, i8*, i8*, ...) @apr_psprintf(i32* %249, i32 %250, i8* %255, i8* %261, i8* %262)
  store i8* %263, i8** %38, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i8*, i8** %29, align 8
  %268 = load i32, i32* @FALSE, align 4
  %269 = load i32*, i32** %25, align 8
  %270 = call i32 @svn_wc_text_modified_p2(i64* %34, i32 %266, i8* %267, i32 %268, i32* %269)
  %271 = call i32 @SVN_ERR(i32 %270)
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i8*, i8** %17, align 8
  %276 = load i8*, i8** %18, align 8
  %277 = load i8*, i8** %29, align 8
  %278 = load i8*, i8** %37, align 8
  %279 = load i8*, i8** %38, align 8
  %280 = load i8*, i8** %36, align 8
  %281 = load i32*, i32** %30, align 8
  %282 = load i32*, i32** %31, align 8
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32*, i32** %19, align 8
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %25, align 8
  %301 = call i32 @svn_wc_merge5(i32* %35, i64* %33, i32 %274, i8* %275, i8* %276, i8* %277, i8* %278, i8* %279, i8* %280, i32* %281, i32* %282, i32 %285, i32 %288, i32 %291, i32* %292, %struct.TYPE_22__* %293, i32* null, i32* null, i32 %296, i32 %299, i32* %300)
  %302 = call i32 @SVN_ERR(i32 %301)
  %303 = load i32, i32* %35, align 4
  %304 = load i32, i32* @svn_wc_merge_conflict, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %223
  %307 = load i64, i64* %33, align 8
  %308 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %306, %223
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 1
  %313 = load i8*, i8** %29, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @alloc_and_store_path(i32* %312, i8* %313, i32 %316)
  br label %318

318:                                              ; preds = %310, %306
  %319 = load i32, i32* %35, align 4
  %320 = load i32, i32* @svn_wc_merge_conflict, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  store i64 %323, i64* %32, align 8
  br label %350

324:                                              ; preds = %318
  %325 = load i64, i64* %34, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i32, i32* %35, align 4
  %329 = load i32, i32* @svn_wc_merge_unchanged, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load i64, i64* @svn_wc_notify_state_merged, align 8
  store i64 %332, i64* %32, align 8
  br label %349

333:                                              ; preds = %327, %324
  %334 = load i32, i32* %35, align 4
  %335 = load i32, i32* @svn_wc_merge_merged, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = load i64, i64* @svn_wc_notify_state_changed, align 8
  store i64 %338, i64* %32, align 8
  br label %348

339:                                              ; preds = %333
  %340 = load i32, i32* %35, align 4
  %341 = load i32, i32* @svn_wc_merge_no_merge, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  %344 = load i64, i64* @svn_wc_notify_state_missing, align 8
  store i64 %344, i64* %32, align 8
  br label %347

345:                                              ; preds = %339
  %346 = load i64, i64* @svn_wc_notify_state_unchanged, align 8
  store i64 %346, i64* %32, align 8
  br label %347

347:                                              ; preds = %345, %343
  br label %348

348:                                              ; preds = %347, %337
  br label %349

349:                                              ; preds = %348, %331
  br label %350

350:                                              ; preds = %349, %322
  br label %351

351:                                              ; preds = %350, %191
  br label %352

352:                                              ; preds = %351, %190
  %353 = load i64, i64* %32, align 8
  %354 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %376, label %356

356:                                              ; preds = %352
  %357 = load i64, i64* %32, align 8
  %358 = load i64, i64* @svn_wc_notify_state_merged, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %376, label %360

360:                                              ; preds = %356
  %361 = load i64, i64* %32, align 8
  %362 = load i64, i64* @svn_wc_notify_state_changed, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %376, label %364

364:                                              ; preds = %360
  %365 = load i64, i64* %33, align 8
  %366 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %376, label %368

368:                                              ; preds = %364
  %369 = load i64, i64* %33, align 8
  %370 = load i64, i64* @svn_wc_notify_state_merged, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  %373 = load i64, i64* %33, align 8
  %374 = load i64, i64* @svn_wc_notify_state_changed, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %372, %368, %364, %360, %356, %352
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %378 = load i8*, i8** %29, align 8
  %379 = load i32, i32* @svn_node_file, align 4
  %380 = load i64, i64* %32, align 8
  %381 = load i64, i64* %33, align 8
  %382 = load i32*, i32** %25, align 8
  %383 = call i32 @record_update_update(%struct.TYPE_21__* %377, i8* %378, i32 %379, i64 %380, i64 %381, i32* %382)
  %384 = call i32 @SVN_ERR(i32 %383)
  br label %385

385:                                              ; preds = %376, %372
  %386 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %386, i32** %13, align 8
  br label %387

387:                                              ; preds = %385, %116
  %388 = load i32*, i32** %13, align 8
  ret i32* %388
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_file_edited(%struct.TYPE_21__*, %struct.merge_file_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_21__*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @prepare_merge_props_changed(%struct.TYPE_22__**, i8*, %struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @make_conflict_versions(i32**, i32**, i8*, i32, i32, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_wc_merge_props3(i64*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_22__*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @svn_path_splitext(i32*, i8**, i8*, i32*) #1

declare dso_local i64 @svn_cstring_match_glob_list(i8*, %struct.TYPE_23__*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc_text_modified_p2(i64*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc_merge5(i32*, i64*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32, i32, i32, i32*, %struct.TYPE_22__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @record_update_update(%struct.TYPE_21__*, i8*, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
