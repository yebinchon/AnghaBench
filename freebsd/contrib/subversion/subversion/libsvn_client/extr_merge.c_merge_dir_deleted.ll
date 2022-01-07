; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__*, i32, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.merge_dir_baton_t = type { i64, i32, %struct.dir_delete_baton_t*, i32, i64 }
%struct.dir_delete_baton_t = type { i8*, %struct.merge_dir_baton_t*, i32 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_delete = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_19__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@verify_touched_by_del_check = common dso_local global i32 0, align 4
@SVN_ERR_CEASE_INVOCATION = common dso_local global i64 0, align 8
@SVN_ERR_WC_LEFT_LOCAL_MOD = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i8*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @merge_dir_deleted(i8* %0, i32* %1, i32* %2, i8* %3, %struct.svn_diff_tree_processor_t* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.merge_dir_baton_t*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dir_delete_baton_t*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.svn_diff_tree_processor_t* %4, %struct.svn_diff_tree_processor_t** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %12, align 8
  %24 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %14, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to %struct.merge_dir_baton_t*
  store %struct.merge_dir_baton_t* %27, %struct.merge_dir_baton_t** %15, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i8* @svn_dirent_join(i32 %32, i8* %33, i32* %34)
  store i8* %35, i8** %16, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %37 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @handle_pending_notifications(%struct.TYPE_20__* %36, %struct.merge_dir_baton_t* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %42 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @mark_dir_edited(%struct.TYPE_20__* %41, %struct.merge_dir_baton_t* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %48 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %6
  %52 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %53 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* @svn_node_dir, align 4
  %61 = load i32, i32* @svn_wc_notify_update_shadowed_delete, align 4
  %62 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %63 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %66 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @record_skip(%struct.TYPE_20__* %58, i8* %59, i32 %60, i32 %61, i32 %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %57, %51
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %7, align 8
  br label %287

73:                                               ; preds = %6
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %7, align 8
  br label %287

80:                                               ; preds = %73
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %16, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @svn_wc_prop_list2(i32** %18, i32 %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %80
  %96 = load i8*, i8** @TRUE, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %17, align 4
  br label %196

98:                                               ; preds = %80
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @properties_same_p(i32* %17, i32* %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %105 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %104, i32 0, i32 2
  %106 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %105, align 8
  store %struct.dir_delete_baton_t* %106, %struct.dir_delete_baton_t** %19, align 8
  %107 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %108 = icmp ne %struct.dir_delete_baton_t* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %98
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %116 = getelementptr inbounds %struct.dir_delete_baton_t, %struct.dir_delete_baton_t* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %123

117:                                              ; preds = %98
  %118 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %119 = getelementptr inbounds %struct.dir_delete_baton_t, %struct.dir_delete_baton_t* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @store_path(i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %117, %113
  %124 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %125 = getelementptr inbounds %struct.dir_delete_baton_t, %struct.dir_delete_baton_t* %124, i32 0, i32 1
  %126 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %125, align 8
  %127 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %128 = icmp ne %struct.merge_dir_baton_t* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %130, %struct.TYPE_19__** %7, align 8
  br label %287

131:                                              ; preds = %123
  %132 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %133 = getelementptr inbounds %struct.dir_delete_baton_t, %struct.dir_delete_baton_t* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %17, align 4
  br label %195

138:                                              ; preds = %131
  %139 = load i8*, i8** @TRUE, align 8
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %17, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @svn_wc_get_default_ignores(i32** %20, i32 %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %16, align 8
  %155 = load i32, i32* @svn_depth_infinity, align 4
  %156 = load i8*, i8** @TRUE, align 8
  %157 = load i32, i32* @FALSE, align 4
  %158 = load i8*, i8** @TRUE, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = load i32, i32* @verify_touched_by_del_check, align 4
  %161 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = call %struct.TYPE_19__* @svn_wc_walk_status(i32 %153, i8* %154, i32 %155, i8* %156, i32 %157, i8* %158, i32* %159, i32 %160, %struct.dir_delete_baton_t* %161, i32 %166, i32 %171, i32* %172)
  store %struct.TYPE_19__* %173, %struct.TYPE_19__** %21, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %175 = icmp ne %struct.TYPE_19__* %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %138
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SVN_ERR_CEASE_INVOCATION, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %184 = call %struct.TYPE_19__* @svn_error_trace(%struct.TYPE_19__* %183)
  store %struct.TYPE_19__* %184, %struct.TYPE_19__** %7, align 8
  br label %287

185:                                              ; preds = %176
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %187 = call i32 @svn_error_clear(%struct.TYPE_19__* %186)
  br label %188

188:                                              ; preds = %185, %138
  %189 = load %struct.dir_delete_baton_t*, %struct.dir_delete_baton_t** %19, align 8
  %190 = getelementptr inbounds %struct.dir_delete_baton_t, %struct.dir_delete_baton_t* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %188, %136
  br label %196

196:                                              ; preds = %195, %95
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %241

199:                                              ; preds = %196
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %241, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %16, align 8
  %211 = load i32, i32* @FALSE, align 4
  %212 = load i32, i32* @FALSE, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %13, align 8
  %224 = call %struct.TYPE_19__* @svn_wc_delete4(i32 %209, i8* %210, i32 %211, i32 %212, i32 %217, i32 %222, i32* null, i32* null, i32* %223)
  store %struct.TYPE_19__* %224, %struct.TYPE_19__** %22, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %226 = icmp ne %struct.TYPE_19__* %225, null
  br i1 %226, label %227, label %240

227:                                              ; preds = %204
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @SVN_ERR_WC_LEFT_LOCAL_MOD, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %235 = call %struct.TYPE_19__* @svn_error_trace(%struct.TYPE_19__* %234)
  store %struct.TYPE_19__* %235, %struct.TYPE_19__** %7, align 8
  br label %287

236:                                              ; preds = %227
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %238 = call i32 @svn_error_clear(%struct.TYPE_19__* %237)
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %17, align 4
  br label %240

240:                                              ; preds = %236, %204
  br label %241

241:                                              ; preds = %240, %199, %196
  %242 = load i32, i32* %17, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %259, label %244

244:                                              ; preds = %241
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %246 = load i8*, i8** %16, align 8
  %247 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %248 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @svn_node_dir, align 4
  %251 = load i32, i32* @svn_node_dir, align 4
  %252 = load i32, i32* @svn_node_none, align 4
  %253 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %254 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %255 = load i8*, i8** @TRUE, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = call i32 @record_tree_conflict(%struct.TYPE_20__* %245, i8* %246, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32* null, i8* %255, i32* %256)
  %258 = call i32 @SVN_ERR(i32 %257)
  br label %285

259:                                              ; preds = %241
  %260 = load i32*, i32** %18, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %275

262:                                              ; preds = %259
  %263 = load i32*, i32** %18, align 8
  %264 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %265 = call i64 @svn_hash_gets(i32* %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = load i8*, i8** %16, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @alloc_and_store_path(i32* %269, i8* %270, i32 %273)
  br label %275

275:                                              ; preds = %267, %262, %259
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %277 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %278 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = load i32, i32* @svn_node_dir, align 4
  %282 = load i32*, i32** %13, align 8
  %283 = call i32 @record_update_delete(%struct.TYPE_20__* %276, i32 %279, i8* %280, i32 %281, i32* %282)
  %284 = call i32 @SVN_ERR(i32 %283)
  br label %285

285:                                              ; preds = %275, %244
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %286, %struct.TYPE_19__** %7, align 8
  br label %287

287:                                              ; preds = %285, %233, %182, %129, %78, %71
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %288
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @handle_pending_notifications(%struct.TYPE_20__*, %struct.merge_dir_baton_t*, i32*) #1

declare dso_local i32 @mark_dir_edited(%struct.TYPE_20__*, %struct.merge_dir_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_20__*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @properties_same_p(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @svn_wc_get_default_ignores(i32**, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_wc_walk_status(i32, i8*, i32, i8*, i32, i8*, i32*, i32, %struct.dir_delete_baton_t*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_error_trace(%struct.TYPE_19__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @svn_wc_delete4(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @record_tree_conflict(%struct.TYPE_20__*, i8*, i32, i32, i32, i32, i32, i32, i32*, i8*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @record_update_delete(%struct.TYPE_20__*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
