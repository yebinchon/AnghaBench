; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.merge_dir_baton_t = type { i64, i64, i64, %struct.TYPE_14__*, i64, i8* }
%struct.TYPE_14__ = type { i64 }
%struct.merge_file_baton_t = type { i64, i64, i8*, i64, i8*, i8*, i8*, %struct.merge_dir_baton_t*, i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i8* null, align 8
@svn_wc_notify_state_unknown = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i8* null, align 8
@svn_wc_notify_state_inapplicable = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@CONFLICT_REASON_SKIP = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_wc_notify_state_missing = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_missing = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i8* null, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i8* null, align 8
@svn_wc_conflict_action_add = common dso_local global i8* null, align 8
@svn_wc_conflict_action_replace = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*, i32*)* @merge_file_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file_opened(i8** %0, i8** %1, i8* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca %struct.merge_dir_baton_t*, align 8
  %24 = alloca %struct.merge_file_baton_t*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_16__*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store i8** %0, i8*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %35 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %19, align 8
  %36 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %22, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = bitcast i8* %38 to %struct.merge_dir_baton_t*
  store %struct.merge_dir_baton_t* %39, %struct.merge_dir_baton_t** %23, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = call i8* @svn_dirent_join(i32 %44, i8* %45, i32* %46)
  store i8* %47, i8** %25, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = call %struct.merge_file_baton_t* @apr_pcalloc(i32* %48, i32 80)
  store %struct.merge_file_baton_t* %49, %struct.merge_file_baton_t** %24, align 8
  %50 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %51 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %52 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i8*, i8** @svn_wc_conflict_action_edit, align 8
  %54 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %55 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @svn_wc_notify_state_unknown, align 8
  %57 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %58 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %10
  %62 = load i64, i64* @svn_node_file, align 8
  %63 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %64 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  br label %69

65:                                               ; preds = %10
  %66 = load i64, i64* @svn_node_none, align 8
  %67 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %68 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %67, i32 0, i32 9
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32*, i32** %16, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* @svn_node_file, align 8
  %74 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %75 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %74, i32 0, i32 8
  store i64 %73, i64* %75, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load i64, i64* @svn_node_none, align 8
  %78 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %79 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %78, i32 0, i32 8
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %82 = bitcast %struct.merge_file_baton_t* %81 to i8*
  %83 = load i8**, i8*** %12, align 8
  store i8* %82, i8** %83, align 8
  %84 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %85 = icmp ne %struct.merge_dir_baton_t* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %88 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %89 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %88, i32 0, i32 7
  store %struct.merge_dir_baton_t* %87, %struct.merge_dir_baton_t** %89, align 8
  %90 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %91 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %94 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %96 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %99 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %86, %80
  %101 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %102 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %462

106:                                              ; preds = %100
  %107 = load i32*, i32** %15, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %281

109:                                              ; preds = %106
  %110 = load i32*, i32** %16, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** @svn_wc_conflict_action_delete, align 8
  %114 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %115 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %118 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %120 = load i8*, i8** %25, align 8
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @perform_obstruction_check(i64* %29, i8** %26, i8** %27, i64* %118, i64* %28, %struct.TYPE_17__* %119, i8* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* @svn_wc_notify_state_inapplicable, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %116
  %128 = load i8*, i8** @TRUE, align 8
  %129 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %130 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @CONFLICT_REASON_SKIP, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %134 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %29, align 8
  %136 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %137 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %138, i32** %11, align 8
  br label %464

139:                                              ; preds = %116
  %140 = load i8*, i8** %26, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i64, i64* @svn_node_none, align 8
  %144 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %145 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %139
  %147 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %148 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @svn_node_none, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %202

152:                                              ; preds = %146
  %153 = load i8*, i8** @TRUE, align 8
  %154 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %155 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %157 = icmp ne %struct.merge_dir_baton_t* %156, null
  br i1 %157, label %158, label %181

158:                                              ; preds = %152
  %159 = load i8*, i8** %27, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %28, align 8
  %163 = load i64, i64* @svn_depth_unknown, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load i64, i64* %28, align 8
  %167 = load i64, i64* @svn_depth_files, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %165, %158
  %170 = load i8*, i8** @TRUE, align 8
  %171 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %172 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** @CONFLICT_REASON_SKIP, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %176 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* @svn_wc_notify_state_missing, align 8
  %178 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %179 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %180, i32** %11, align 8
  br label %464

181:                                              ; preds = %165, %161, %152
  %182 = load i8*, i8** %26, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %186 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %187 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  br label %192

188:                                              ; preds = %181
  %189 = load i64, i64* @svn_wc_conflict_reason_missing, align 8
  %190 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %191 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i8*, i8** @TRUE, align 8
  %194 = load i8**, i8*** %13, align 8
  store i8* %193, i8** %194, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %196 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %197 = load i8*, i8** %25, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @mark_file_edited(%struct.TYPE_17__* %195, %struct.merge_file_baton_t* %196, i8* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %201, i32** %11, align 8
  br label %464

202:                                              ; preds = %146
  %203 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %204 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @svn_node_file, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %241

208:                                              ; preds = %202
  %209 = load i8*, i8** @TRUE, align 8
  %210 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %211 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %25, align 8
  %218 = load i32*, i32** %21, align 8
  %219 = call i32 @svn_wc__node_is_added(i8** %30, i32 %216, i8* %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32 %219)
  %221 = load i8*, i8** %30, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %208
  %224 = load i8*, i8** @svn_wc_conflict_reason_added, align 8
  br label %227

225:                                              ; preds = %208
  %226 = load i8*, i8** @svn_wc_conflict_reason_obstructed, align 8
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i8* [ %224, %223 ], [ %226, %225 ]
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %231 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load i8*, i8** @TRUE, align 8
  %233 = load i8**, i8*** %13, align 8
  store i8* %232, i8** %233, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %235 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %236 = load i8*, i8** %25, align 8
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @mark_file_edited(%struct.TYPE_17__* %234, %struct.merge_file_baton_t* %235, i8* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %240, i32** %11, align 8
  br label %464

241:                                              ; preds = %202
  br label %242

242:                                              ; preds = %241
  %243 = load i32*, i32** %16, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %280, label %245

245:                                              ; preds = %242
  %246 = load i8*, i8** @svn_wc_conflict_action_delete, align 8
  %247 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %248 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %247, i32 0, i32 5
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %250 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %251 = load i8*, i8** %25, align 8
  %252 = load i32*, i32** %21, align 8
  %253 = call i32 @mark_file_edited(%struct.TYPE_17__* %249, %struct.merge_file_baton_t* %250, i8* %251, i32* %252)
  %254 = call i32 @SVN_ERR(i32 %253)
  %255 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %256 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %261

259:                                              ; preds = %245
  %260 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %260, i32** %11, align 8
  br label %464

261:                                              ; preds = %245
  %262 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %263 = icmp ne %struct.merge_dir_baton_t* %262, null
  br i1 %263, label %264, label %279

264:                                              ; preds = %261
  %265 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %266 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %265, i32 0, i32 3
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = icmp ne %struct.TYPE_14__* %267, null
  br i1 %268, label %269, label %279

269:                                              ; preds = %264
  %270 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %271 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %270, i32 0, i32 3
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load i8*, i8** @TRUE, align 8
  %278 = load i8**, i8*** %13, align 8
  store i8* %277, i8** %278, align 8
  br label %279

279:                                              ; preds = %276, %269, %264, %261
  br label %280

280:                                              ; preds = %279, %242
  br label %461

281:                                              ; preds = %106
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %31, align 8
  %282 = load i8*, i8** @TRUE, align 8
  %283 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %284 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %283, i32 0, i32 6
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** @svn_wc_conflict_action_add, align 8
  %286 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %287 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %286, i32 0, i32 5
  store i8* %285, i8** %287, align 8
  %288 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %289 = icmp ne %struct.merge_dir_baton_t* %288, null
  br i1 %289, label %290, label %314

290:                                              ; preds = %281
  %291 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %292 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %314

295:                                              ; preds = %290
  %296 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %297 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load i8*, i8** %25, align 8
  %300 = call %struct.TYPE_16__* @svn_hash_gets(i64 %298, i8* %299)
  %301 = icmp ne %struct.TYPE_16__* %300, null
  br i1 %301, label %302, label %314

302:                                              ; preds = %295
  %303 = load i8*, i8** @TRUE, align 8
  %304 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %305 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  %306 = load i8*, i8** @svn_wc_conflict_action_replace, align 8
  %307 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %308 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %307, i32 0, i32 5
  store i8* %306, i8** %308, align 8
  %309 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %310 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i8*, i8** %25, align 8
  %313 = call i32 @svn_hash_sets(i64 %311, i8* %312, i32* null)
  br label %314

314:                                              ; preds = %302, %295, %290, %281
  %315 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %316 = icmp ne %struct.merge_dir_baton_t* %315, null
  br i1 %316, label %317, label %378

317:                                              ; preds = %314
  %318 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %319 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %378

322:                                              ; preds = %317
  %323 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %324 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i8*, i8** %25, align 8
  %327 = call %struct.TYPE_16__* @svn_hash_gets(i64 %325, i8* %326)
  store %struct.TYPE_16__* %327, %struct.TYPE_16__** %31, align 8
  %328 = icmp ne %struct.TYPE_16__* %327, null
  br i1 %328, label %329, label %378

329:                                              ; preds = %322
  %330 = load i8*, i8** @svn_wc_conflict_action_replace, align 8
  %331 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %332 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %331, i32 0, i32 5
  store i8* %330, i8** %332, align 8
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %337 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %336, i32 0, i32 0
  store i64 %335, i64* %337, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %339 = load i8*, i8** %25, align 8
  %340 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i64, i64* @svn_node_file, align 8
  %350 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %351 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %350, i32 0, i32 5
  %352 = load i8*, i8** %351, align 8
  %353 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %354 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %357 = load i32, i32* @FALSE, align 4
  %358 = load i32*, i32** %21, align 8
  %359 = call i32 @record_tree_conflict(%struct.TYPE_17__* %338, i8* %339, %struct.merge_dir_baton_t* %340, i32 %343, i32 %348, i64 %349, i8* %352, i64 %355, %struct.TYPE_16__* %356, i32 %357, i32* %358)
  %360 = call i32 @SVN_ERR(i32 %359)
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %372, label %366

366:                                              ; preds = %329
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %366, %329
  br label %377

373:                                              ; preds = %366
  %374 = load i8*, i8** @TRUE, align 8
  %375 = load i8**, i8*** %13, align 8
  store i8* %374, i8** %375, align 8
  %376 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %376, i32** %11, align 8
  br label %464

377:                                              ; preds = %372
  br label %454

378:                                              ; preds = %322, %317, %314
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %378
  %384 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %385 = icmp ne %struct.merge_dir_baton_t* %384, null
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %23, align 8
  %388 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %453, label %391

391:                                              ; preds = %386, %383
  %392 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %393 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %392, i32 0, i32 4
  %394 = load i8*, i8** %393, align 8
  %395 = icmp ne i8* %394, null
  br i1 %395, label %453, label %396

396:                                              ; preds = %391, %378
  %397 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %398 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %397, i32 0, i32 1
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %400 = load i8*, i8** %25, align 8
  %401 = load i32*, i32** %21, align 8
  %402 = call i32 @perform_obstruction_check(i64* %32, i8** %33, i8** null, i64* %398, i64* null, %struct.TYPE_17__* %399, i8* %400, i32* %401)
  %403 = call i32 @SVN_ERR(i32 %402)
  %404 = load i64, i64* %32, align 8
  %405 = load i64, i64* @svn_wc_notify_state_inapplicable, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %407, label %418

407:                                              ; preds = %396
  %408 = load i8*, i8** @TRUE, align 8
  %409 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %410 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %409, i32 0, i32 2
  store i8* %408, i8** %410, align 8
  %411 = load i8*, i8** @CONFLICT_REASON_SKIP, align 8
  %412 = ptrtoint i8* %411 to i64
  %413 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %414 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %413, i32 0, i32 0
  store i64 %412, i64* %414, align 8
  %415 = load i64, i64* %32, align 8
  %416 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %417 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %416, i32 0, i32 3
  store i64 %415, i64* %417, align 8
  br label %452

418:                                              ; preds = %396
  %419 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %420 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @svn_node_none, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %451

424:                                              ; preds = %418
  %425 = load i8*, i8** %33, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %451, label %427

427:                                              ; preds = %424
  %428 = load i8*, i8** @TRUE, align 8
  %429 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %430 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %429, i32 0, i32 2
  store i8* %428, i8** %430, align 8
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i8*, i8** %25, align 8
  %437 = load i32*, i32** %21, align 8
  %438 = call i32 @svn_wc__node_is_added(i8** %34, i32 %435, i8* %436, i32* %437)
  %439 = call i32 @SVN_ERR(i32 %438)
  %440 = load i8*, i8** %34, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %444

442:                                              ; preds = %427
  %443 = load i8*, i8** @svn_wc_conflict_reason_added, align 8
  br label %446

444:                                              ; preds = %427
  %445 = load i8*, i8** @svn_wc_conflict_reason_obstructed, align 8
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i8* [ %443, %442 ], [ %445, %444 ]
  %448 = ptrtoint i8* %447 to i64
  %449 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %450 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %449, i32 0, i32 0
  store i64 %448, i64* %450, align 8
  br label %451

451:                                              ; preds = %446, %424, %418
  br label %452

452:                                              ; preds = %451, %407
  br label %453

453:                                              ; preds = %452, %391, %386
  br label %454

454:                                              ; preds = %453, %377
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %456 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %24, align 8
  %457 = load i8*, i8** %25, align 8
  %458 = load i32*, i32** %21, align 8
  %459 = call i32 @mark_file_edited(%struct.TYPE_17__* %455, %struct.merge_file_baton_t* %456, i8* %457, i32* %458)
  %460 = call i32 @SVN_ERR(i32 %459)
  br label %461

461:                                              ; preds = %454, %280
  br label %462

462:                                              ; preds = %461, %105
  %463 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %463, i32** %11, align 8
  br label %464

464:                                              ; preds = %462, %373, %259, %227, %192, %169, %127
  %465 = load i32*, i32** %11, align 8
  ret i32* %465
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.merge_file_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @perform_obstruction_check(i64*, i8**, i8**, i64*, i64*, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @mark_file_edited(%struct.TYPE_17__*, %struct.merge_file_baton_t*, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_is_added(i8**, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i32 @record_tree_conflict(%struct.TYPE_17__*, i8*, %struct.merge_dir_baton_t*, i32, i32, i64, i8*, i64, %struct.TYPE_16__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
