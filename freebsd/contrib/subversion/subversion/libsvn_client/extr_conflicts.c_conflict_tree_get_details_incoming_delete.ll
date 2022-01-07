; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_incoming_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_incoming_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.conflict_tree_incoming_delete_details*, i32, i32 }
%struct.conflict_tree_incoming_delete_details = type { i8*, i32*, i64, i8*, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @conflict_tree_get_details_incoming_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_details_incoming_delete(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %8, i64* %11, i64* %13, %struct.TYPE_18__* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %9, i64* %12, i64* %14, %struct.TYPE_18__* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @svn_client_conflict_get_repos_info(i8** %10, i32* null, %struct.TYPE_18__* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_18__* %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @svn_wc_operation_update, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %155

49:                                               ; preds = %3
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @svn_dirent_dirname(i32 %59, i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @svn_wc__node_get_repos_info(i64* %18, i8** %17, i32* null, i32* null, i32 %56, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @svn_node_none, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %53
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @find_related_node(i8** %23, i64* %24, i8* %70, i64 %71, i8* %72, i64 %73, %struct.TYPE_18__* %74, %struct.TYPE_17__* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %82

80:                                               ; preds = %53
  store i8* null, i8** %23, align 8
  %81 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %81, i64* %24, align 8
  br label %82

82:                                               ; preds = %80, %69
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @svn_dirent_basename(i32 %86, i32* %87)
  %89 = load i8*, i8** %17, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @svn_node_none, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %97

95:                                               ; preds = %82
  %96 = load i64, i64* %11, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i64 [ 0, %94 ], [ %96, %95 ]
  %99 = load i8*, i8** %23, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @find_revision_for_suspected_deletion(i64* %19, i8** %20, i64* %21, i32** %22, %struct.TYPE_18__* %83, i32 %88, i8* %89, i64 %90, i64 %98, i8* %99, i64 %100, %struct.TYPE_17__* %101, i32 %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %112, i32** %4, align 8
  br label %259

113:                                              ; preds = %97
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.conflict_tree_incoming_delete_details* @apr_pcalloc(i32 %116, i32 48)
  store %struct.conflict_tree_incoming_delete_details* %117, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %120 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %119, i32 0, i32 5
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %122 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %123 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = call i8* @apr_pstrdup(i32 %126, i8* %127)
  %129 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %130 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %133 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %136 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %139 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  br label %154

140:                                              ; preds = %49
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %147 = call i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_18__* %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @get_incoming_delete_details_for_reverse_addition(%struct.conflict_tree_incoming_delete_details** %15, i8* %141, i8* %142, i64 %143, i64 %144, %struct.TYPE_17__* %145, i32 %147, i32 %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  br label %154

154:                                              ; preds = %140, %113
  br label %239

155:                                              ; preds = %3
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* @svn_wc_operation_switch, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* @svn_wc_operation_merge, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %237

163:                                              ; preds = %159, %155
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %222

167:                                              ; preds = %163
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @svn_relpath_basename(i8* %169, i32* %170)
  %172 = load i8*, i8** %9, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = call i8* @svn_relpath_dirname(i8* %172, i32* %173)
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @find_revision_for_suspected_deletion(i64* %25, i8** %26, i64* %27, i32** %28, %struct.TYPE_18__* %168, i32 %171, i8* %174, i64 %175, i64 %176, i8* %177, i64 %178, %struct.TYPE_17__* %179, i32 %182, i32* %183)
  %185 = call i32 @SVN_ERR(i32 %184)
  %186 = load i64, i64* %25, align 8
  %187 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %167
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %4, align 8
  br label %259

191:                                              ; preds = %167
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.conflict_tree_incoming_delete_details* @apr_pcalloc(i32 %194, i32 48)
  store %struct.conflict_tree_incoming_delete_details* %195, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %196 = load i64, i64* %25, align 8
  %197 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %198 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %197, i32 0, i32 5
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %200 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %201 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %200, i32 0, i32 4
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = call i8* @apr_pstrdup(i32 %204, i8* %205)
  %207 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %208 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i8*, i8** %26, align 8
  %213 = call i8* @apr_pstrdup(i32 %211, i8* %212)
  %214 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %215 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i64, i64* %27, align 8
  %217 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %218 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = load i32*, i32** %28, align 8
  %220 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %221 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %220, i32 0, i32 1
  store i32* %219, i32** %221, align 8
  br label %236

222:                                              ; preds = %163
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %12, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %229 = call i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_18__* %228)
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @get_incoming_delete_details_for_reverse_addition(%struct.conflict_tree_incoming_delete_details** %15, i8* %223, i8* %224, i64 %225, i64 %226, %struct.TYPE_17__* %227, i32 %229, i32 %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  br label %236

236:                                              ; preds = %222, %191
  br label %238

237:                                              ; preds = %159
  store %struct.conflict_tree_incoming_delete_details* null, %struct.conflict_tree_incoming_delete_details** %15, align 8
  br label %238

238:                                              ; preds = %237, %236
  br label %239

239:                                              ; preds = %238, %154
  %240 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  store %struct.conflict_tree_incoming_delete_details* %240, %struct.conflict_tree_incoming_delete_details** %242, align 8
  %243 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %244 = icmp ne %struct.conflict_tree_incoming_delete_details* %243, null
  br i1 %244, label %245, label %257

245:                                              ; preds = %239
  %246 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %247 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %15, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @init_wc_move_targets(%struct.conflict_tree_incoming_delete_details* %251, %struct.TYPE_18__* %252, %struct.TYPE_17__* %253, i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  br label %257

257:                                              ; preds = %250, %245, %239
  %258 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %258, i32** %4, align 8
  br label %259

259:                                              ; preds = %257, %189, %111
  %260 = load i32*, i32** %4, align 8
  ret i32* %260
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i64*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i64*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i64*, i8**, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i32, i32*) #1

declare dso_local i32 @find_related_node(i8**, i64*, i8*, i64, i8*, i64, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @find_revision_for_suspected_deletion(i64*, i8**, i64*, i32**, %struct.TYPE_18__*, i32, i8*, i64, i64, i8*, i64, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local %struct.conflict_tree_incoming_delete_details* @apr_pcalloc(i32, i32) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @get_incoming_delete_details_for_reverse_addition(%struct.conflict_tree_incoming_delete_details**, i8*, i8*, i64, i64, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @init_wc_move_targets(%struct.conflict_tree_incoming_delete_details*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
