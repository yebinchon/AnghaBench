; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_deleted_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_deleted_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.find_deleted_rev_baton = type { i64, i32, i32, i32, i32, i32, %struct.repos_move_info*, i32, %struct.TYPE_19__*, i32, i32, i32, i32*, i32 }
%struct.repos_move_info = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 (i32, %struct.TYPE_20__*, i32*)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i8, i32 }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict_details_progress = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_24__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unknown author\00", align 1
@SVN_ERR_CEASE_INVOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (i8*, %struct.TYPE_22__*, i32*)* @find_deleted_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @find_deleted_rev(i8* %0, %struct.TYPE_22__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.find_deleted_rev_baton*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.repos_move_info*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.find_deleted_rev_baton*
  store %struct.find_deleted_rev_baton* %23, %struct.find_deleted_rev_baton** %8, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @svn_node_none, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %27 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %26, i32 0, i32 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32 (i32, %struct.TYPE_20__*, i32*)*, i32 (i32, %struct.TYPE_20__*, i32*)** %29, align 8
  %31 = icmp ne i32 (i32, %struct.TYPE_20__*, i32*)* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %3
  %33 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %34 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @svn_wc_notify_tree_conflict_details_progress, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call %struct.TYPE_20__* @svn_wc_create_notify(i32 %35, i32 %36, i32* %37)
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %13, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %45 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %44, i32 0, i32 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32 (i32, %struct.TYPE_20__*, i32*)*, i32 (i32, %struct.TYPE_20__*, i32*)** %47, align 8
  %49 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %50 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %49, i32 0, i32 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 %48(i32 %53, %struct.TYPE_20__* %54, i32* %55)
  br label %57

57:                                               ; preds = %32, %3
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %4, align 8
  br label %276

64:                                               ; preds = %57
  %65 = load i32*, i32** %7, align 8
  %66 = call i32* @svn_pool_create(i32* %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @apr_hash_first(i32* %67, i32 %70)
  store i32* %71, i32** %9, align 8
  br label %72

72:                                               ; preds = %188, %64
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %191

75:                                               ; preds = %72
  %76 = load i32*, i32** %9, align 8
  %77 = call i8* @apr_hash_this_key(i32* %76)
  store i8* %77, i8** %14, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call %struct.TYPE_23__* @apr_hash_this_val(i32* %78)
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %15, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @svn_pool_clear(i32* %80)
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  br label %90

90:                                               ; preds = %87, %75
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %187, label %93

93:                                               ; preds = %90
  %94 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %95 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = call i64 @svn_path_compare_paths(i32 %96, i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %187

100:                                              ; preds = %93
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 4
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 68
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 4
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 82
  br i1 %111, label %112, label %187

112:                                              ; preds = %106, %100
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %11, align 8
  %114 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %115 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %114, i32 0, i32 12
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %173

118:                                              ; preds = %112
  %119 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %120 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %173

124:                                              ; preds = %118
  %125 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %126 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %125, i32 0, i32 12
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %129 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %132 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rev_below(i32 %136)
  %138 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %139 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %142 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %145 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %148 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %147, i32 0, i32 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = call %struct.TYPE_24__* @find_yca(i32** %16, i32* %127, i64 %130, i32 %133, i32 %137, i32 %140, i32 %143, i32 %146, %struct.TYPE_19__* %149, i32* %150, i32* %151)
  store %struct.TYPE_24__* %152, %struct.TYPE_24__** %17, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %154 = icmp ne %struct.TYPE_24__* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %124
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %163 = call i32 @svn_error_clear(%struct.TYPE_24__* %162)
  store i32* null, i32** %16, align 8
  br label %167

164:                                              ; preds = %155
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %166 = call %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__* %165)
  store %struct.TYPE_24__* %166, %struct.TYPE_24__** %4, align 8
  br label %276

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %124
  %169 = load i32*, i32** %16, align 8
  %170 = icmp ne i32* %169, null
  %171 = zext i1 %170 to i32
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %11, align 8
  br label %173

173:                                              ; preds = %168, %118, %112
  %174 = load i64, i64* %11, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i8, i8* %178, align 4
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 82
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %182, %176, %173
  br label %187

187:                                              ; preds = %186, %106, %93, %90
  br label %188

188:                                              ; preds = %187
  %189 = load i32*, i32** %9, align 8
  %190 = call i32* @apr_hash_next(i32* %189)
  store i32* %190, i32** %9, align 8
  br label %72

191:                                              ; preds = %72
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @svn_pool_destroy(i32* %192)
  %194 = load i64, i64* %11, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %241, label %196

196:                                              ; preds = %191
  %197 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %198 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = call i32* @apr_hash_get(i32 %199, i32* %201, i32 4)
  store i32* %202, i32** %18, align 8
  %203 = load i32*, i32** %18, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %240

205:                                              ; preds = %196
  %206 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %207 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = call %struct.repos_move_info* @map_deleted_path_to_move(i32 %208, i32* %209, i32* %210)
  store %struct.repos_move_info* %211, %struct.repos_move_info** %19, align 8
  %212 = load %struct.repos_move_info*, %struct.repos_move_info** %19, align 8
  %213 = icmp ne %struct.repos_move_info* %212, null
  br i1 %213, label %214, label %239

214:                                              ; preds = %205
  %215 = load %struct.repos_move_info*, %struct.repos_move_info** %19, align 8
  %216 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %217 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %216, i32 0, i32 6
  store %struct.repos_move_info* %215, %struct.repos_move_info** %217, align 8
  %218 = load %struct.repos_move_info*, %struct.repos_move_info** %19, align 8
  %219 = getelementptr inbounds %struct.repos_move_info, %struct.repos_move_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %222 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = call i8* @svn_relpath_skip_ancestor(i32 %220, i32 %223)
  store i8* %224, i8** %20, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %214
  %228 = load %struct.repos_move_info*, %struct.repos_move_info** %19, align 8
  %229 = getelementptr inbounds %struct.repos_move_info, %struct.repos_move_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %20, align 8
  %232 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %233 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @svn_relpath_join(i32 %230, i8* %231, i32 %234)
  %236 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %237 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %227, %214
  br label %239

239:                                              ; preds = %238, %205
  br label %240

240:                                              ; preds = %239, %196
  br label %274

241:                                              ; preds = %191
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %246 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %251 = call %struct.TYPE_21__* @svn_hash_gets(i32 %249, i32 %250)
  store %struct.TYPE_21__* %251, %struct.TYPE_21__** %21, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %253 = icmp ne %struct.TYPE_21__* %252, null
  br i1 %253, label %254, label %264

254:                                              ; preds = %241
  %255 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %256 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @apr_pstrdup(i32 %257, i32 %260)
  %262 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %263 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 4
  br label %268

264:                                              ; preds = %241
  %265 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %266 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %267 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %264, %254
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.find_deleted_rev_baton*, %struct.find_deleted_rev_baton** %8, align 8
  %271 = getelementptr inbounds %struct.find_deleted_rev_baton, %struct.find_deleted_rev_baton* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* @SVN_ERR_CEASE_INVOCATION, align 4
  %273 = call %struct.TYPE_24__* @svn_error_create(i32 %272, i32* null, i32* null)
  store %struct.TYPE_24__* %273, %struct.TYPE_24__** %4, align 8
  br label %276

274:                                              ; preds = %240
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %275, %struct.TYPE_24__** %4, align 8
  br label %276

276:                                              ; preds = %274, %268, %164, %62
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %277
}

declare dso_local %struct.TYPE_20__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_23__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @svn_path_compare_paths(i32, i8*) #1

declare dso_local %struct.TYPE_24__* @find_yca(i32**, i32*, i64, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @rev_below(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @apr_hash_get(i32, i32*, i32) #1

declare dso_local %struct.repos_move_info* @map_deleted_path_to_move(i32, i32*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i32, i32) #1

declare dso_local i32 @svn_relpath_join(i32, i8*, i32) #1

declare dso_local %struct.TYPE_21__* @svn_hash_gets(i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_24__* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
