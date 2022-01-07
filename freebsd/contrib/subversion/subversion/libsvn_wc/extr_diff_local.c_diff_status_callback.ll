; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_diff_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_diff_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i8*, i32, i32 }
%struct.diff_baton = type { i32, i32, %struct.node_state_t*, %struct.TYPE_11__*, i32, i32*, i32 }
%struct.node_state_t = type { i32*, i32*, i32, i32, i32, i64, %struct.node_state_t*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (i32, i32, i32, i32*, %struct.TYPE_11__*, i32)*, i32 (i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_11__*, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_status_conflicted = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@svn_wc_status_normal = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_10__*, i32*)* @diff_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_status_callback(i8* %0, i8* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.diff_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.node_state_t*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.diff_baton*
  store %struct.diff_baton* %27, %struct.diff_baton** %10, align 8
  %28 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %29 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %4
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %5, align 8
  br label %587

37:                                               ; preds = %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @svn_wc_status_conflicted, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @svn_wc_status_none, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @svn_wc_status_none, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %5, align 8
  br label %587

57:                                               ; preds = %49, %43, %37
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @svn_wc_status_normal, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %5, align 8
  br label %587

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %163, %70
  %72 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %73 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %72, i32 0, i32 2
  %74 = load %struct.node_state_t*, %struct.node_state_t** %73, align 8
  %75 = icmp ne %struct.node_state_t* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %78 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %77, i32 0, i32 2
  %79 = load %struct.node_state_t*, %struct.node_state_t** %78, align 8
  %80 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @svn_dirent_is_ancestor(i32 %81, i8* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %76, %71
  %87 = phi i1 [ false, %71 ], [ %85, %76 ]
  br i1 %87, label %88, label %173

88:                                               ; preds = %86
  %89 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %90 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %89, i32 0, i32 2
  %91 = load %struct.node_state_t*, %struct.node_state_t** %90, align 8
  store %struct.node_state_t* %91, %struct.node_state_t** %12, align 8
  %92 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %93 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %163, label %96

96:                                               ; preds = %88
  %97 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %98 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %136

101:                                              ; preds = %96
  %102 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %103 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %102, i32 0, i32 3
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32 (i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_11__*, i32)*, i32 (i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_11__*, i32)** %105, align 8
  %107 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %108 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %111 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %114 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %117 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %120 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %123 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %126 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %129 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %132 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %106(i32 %109, i32 %112, i32 %115, i32 %118, i32 %121, i32* %124, i32* %127, %struct.TYPE_11__* %130, i32 %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %162

136:                                              ; preds = %96
  %137 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %138 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %137, i32 0, i32 3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32 (i32, i32, i32, i32*, %struct.TYPE_11__*, i32)*, i32 (i32, i32, i32, i32*, %struct.TYPE_11__*, i32)** %140, align 8
  %142 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %143 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %146 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %149 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %152 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %155 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %154, i32 0, i32 3
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %158 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %141(i32 %144, i32 %147, i32 %150, i32* %153, %struct.TYPE_11__* %156, i32 %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  br label %162

162:                                              ; preds = %136, %101
  br label %163

163:                                              ; preds = %162, %88
  %164 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %165 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %164, i32 0, i32 6
  %166 = load %struct.node_state_t*, %struct.node_state_t** %165, align 8
  %167 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %168 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %167, i32 0, i32 2
  store %struct.node_state_t* %166, %struct.node_state_t** %168, align 8
  %169 = load %struct.node_state_t*, %struct.node_state_t** %12, align 8
  %170 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @svn_pool_clear(i32 %171)
  br label %71

173:                                              ; preds = %86
  %174 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i8* @svn_dirent_dirname(i8* %175, i32* %176)
  %178 = load i64, i64* @FALSE, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @ensure_state(%struct.diff_baton* %174, i8* %177, i64 %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %183 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %182, i32 0, i32 2
  %184 = load %struct.node_state_t*, %struct.node_state_t** %183, align 8
  %185 = icmp ne %struct.node_state_t* %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %173
  %187 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %188 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %187, i32 0, i32 2
  %189 = load %struct.node_state_t*, %struct.node_state_t** %188, align 8
  %190 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %194, i32** %5, align 8
  br label %587

195:                                              ; preds = %186, %173
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %18, align 8
  %199 = load i32, i32* @svn_depth_unknown, align 4
  store i32 %199, i32* %19, align 4
  %200 = load i8*, i8** %7, align 8
  store i8* %200, i8** %20, align 8
  %201 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %202 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = call i8* @svn_dirent_skip_ancestor(i32 %203, i8* %204)
  store i8* %205, i8** %21, align 8
  %206 = load i64, i64* @FALSE, align 8
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* @FALSE, align 8
  store i64 %207, i64* %14, align 8
  %208 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %209 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = call i32 @svn_wc__db_read_info(i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %16, i32* null, i32* null, i32* %210, i8* %211, i32* %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load i64, i64* %16, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %195
  %219 = load i64, i64* @TRUE, align 8
  store i64 %219, i64* %14, align 8
  br label %288

220:                                              ; preds = %195
  %221 = load i64, i64* %15, align 8
  %222 = load i64, i64* @svn_wc__db_status_normal, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %15, align 8
  %226 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224, %220
  %229 = load i64, i64* %18, align 8
  store i64 %229, i64* %17, align 8
  br label %287

230:                                              ; preds = %224
  %231 = load i64, i64* %15, align 8
  %232 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %254

234:                                              ; preds = %230
  %235 = load i64, i64* @TRUE, align 8
  store i64 %235, i64* %13, align 8
  %236 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %237 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %236, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = load i32*, i32** %9, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @svn_wc__db_base_get_info(i64* %22, i64* %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %238, i8* %239, i32* %240, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  %244 = load i64, i64* %22, align 8
  %245 = load i64, i64* @svn_wc__db_status_normal, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %234
  %248 = load i64, i64* %22, align 8
  %249 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %252, i32** %5, align 8
  br label %587

253:                                              ; preds = %247, %234
  br label %286

254:                                              ; preds = %230
  %255 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %256 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = load i32*, i32** %9, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = call i32 @svn_wc__db_base_get_info(i64* %23, i64* %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %257, i8* %258, i32* %259, i32* %260)
  %262 = call i32 @SVN_ERR(i32 %261)
  %263 = load i64, i64* %23, align 8
  %264 = load i64, i64* @svn_wc__db_status_normal, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %254
  %267 = load i64, i64* %23, align 8
  %268 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i64, i64* @TRUE, align 8
  store i64 %271, i64* %14, align 8
  br label %285

272:                                              ; preds = %266, %254
  %273 = load i64, i64* %17, align 8
  %274 = load i64, i64* %18, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %278 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276, %272
  %282 = load i64, i64* @TRUE, align 8
  store i64 %282, i64* %13, align 8
  %283 = load i64, i64* @TRUE, align 8
  store i64 %283, i64* %14, align 8
  br label %284

284:                                              ; preds = %281, %276
  br label %285

285:                                              ; preds = %284, %270
  br label %286

286:                                              ; preds = %285, %253
  br label %287

287:                                              ; preds = %286, %228
  br label %288

288:                                              ; preds = %287, %218
  %289 = load i64, i64* %13, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %356

291:                                              ; preds = %288
  %292 = load i64, i64* %17, align 8
  %293 = load i64, i64* @svn_node_file, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %319

295:                                              ; preds = %291
  %296 = load i32*, i32** %11, align 8
  %297 = load i8*, i8** %20, align 8
  %298 = load i8*, i8** %21, align 8
  %299 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %300 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %301 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %300, i32 0, i32 3
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %304 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %303, i32 0, i32 2
  %305 = load %struct.node_state_t*, %struct.node_state_t** %304, align 8
  %306 = icmp ne %struct.node_state_t* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %295
  %308 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %309 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %308, i32 0, i32 2
  %310 = load %struct.node_state_t*, %struct.node_state_t** %309, align 8
  %311 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  br label %314

313:                                              ; preds = %295
  br label %314

314:                                              ; preds = %313, %307
  %315 = phi i32* [ %312, %307 ], [ null, %313 ]
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @svn_wc__diff_base_only_file(i32* %296, i8* %297, i8* %298, i32 %299, %struct.TYPE_11__* %302, i32* %315, i32* %316)
  %318 = call i32 @SVN_ERR(i32 %317)
  br label %355

319:                                              ; preds = %291
  %320 = load i64, i64* %17, align 8
  %321 = load i64, i64* @svn_node_dir, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %354

323:                                              ; preds = %319
  %324 = load i32*, i32** %11, align 8
  %325 = load i8*, i8** %20, align 8
  %326 = load i8*, i8** %21, align 8
  %327 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %328 = load i32, i32* %19, align 4
  %329 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %330 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %329, i32 0, i32 3
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %330, align 8
  %332 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %333 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %332, i32 0, i32 2
  %334 = load %struct.node_state_t*, %struct.node_state_t** %333, align 8
  %335 = icmp ne %struct.node_state_t* %334, null
  br i1 %335, label %336, label %342

336:                                              ; preds = %323
  %337 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %338 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %337, i32 0, i32 2
  %339 = load %struct.node_state_t*, %struct.node_state_t** %338, align 8
  %340 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  br label %343

342:                                              ; preds = %323
  br label %343

343:                                              ; preds = %342, %336
  %344 = phi i32* [ %341, %336 ], [ null, %342 ]
  %345 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %346 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %349 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32*, i32** %9, align 8
  %352 = call i32 @svn_wc__diff_base_only_dir(i32* %324, i8* %325, i8* %326, i32 %327, i32 %328, %struct.TYPE_11__* %331, i32* %344, i32 %347, i32 %350, i32* %351)
  %353 = call i32 @SVN_ERR(i32 %352)
  br label %354

354:                                              ; preds = %343, %319
  br label %355

355:                                              ; preds = %354, %314
  br label %475

356:                                              ; preds = %288
  %357 = load i64, i64* %14, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %474, label %359

359:                                              ; preds = %356
  %360 = load i64, i64* %18, align 8
  %361 = load i64, i64* @svn_node_file, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %394

363:                                              ; preds = %359
  %364 = load i32*, i32** %11, align 8
  %365 = load i8*, i8** %20, align 8
  %366 = load i8*, i8** %21, align 8
  %367 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %368 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %369 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %368, i32 0, i32 3
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %369, align 8
  %371 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %372 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %371, i32 0, i32 2
  %373 = load %struct.node_state_t*, %struct.node_state_t** %372, align 8
  %374 = icmp ne %struct.node_state_t* %373, null
  br i1 %374, label %375, label %381

375:                                              ; preds = %363
  %376 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %377 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %376, i32 0, i32 2
  %378 = load %struct.node_state_t*, %struct.node_state_t** %377, align 8
  %379 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  br label %382

381:                                              ; preds = %363
  br label %382

382:                                              ; preds = %381, %375
  %383 = phi i32* [ %380, %375 ], [ null, %381 ]
  %384 = load i64, i64* @FALSE, align 8
  %385 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %386 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %389 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32*, i32** %9, align 8
  %392 = call i32 @svn_wc__diff_base_working_diff(i32* %364, i8* %365, i8* %366, i32 %367, %struct.TYPE_11__* %370, i32* %383, i64 %384, i32 %387, i32 %390, i32* %391)
  %393 = call i32 @SVN_ERR(i32 %392)
  br label %473

394:                                              ; preds = %359
  %395 = load i64, i64* %18, align 8
  %396 = load i64, i64* @svn_node_dir, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %472

398:                                              ; preds = %394
  %399 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %400 = load i8*, i8** %7, align 8
  %401 = load i64, i64* @FALSE, align 8
  %402 = load i32*, i32** %9, align 8
  %403 = call i32 @ensure_state(%struct.diff_baton* %399, i8* %400, i64 %401, i32* %402)
  %404 = call i32 @SVN_ERR(i32 %403)
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @svn_wc_status_none, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %471

410:                                              ; preds = %398
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @svn_wc_status_normal, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %471

416:                                              ; preds = %410
  %417 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %418 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %417, i32 0, i32 2
  %419 = load %struct.node_state_t*, %struct.node_state_t** %418, align 8
  %420 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %419, i32 0, i32 3
  %421 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %422 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %421, i32 0, i32 5
  %423 = load i32*, i32** %422, align 8
  %424 = load i8*, i8** %7, align 8
  %425 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %426 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %425, i32 0, i32 2
  %427 = load %struct.node_state_t*, %struct.node_state_t** %426, align 8
  %428 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32*, i32** %9, align 8
  %431 = call i32 @svn_wc__db_base_get_props(i32* %420, i32* %423, i8* %424, i32 %429, i32* %430)
  %432 = call i32 @SVN_ERR(i32 %431)
  %433 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %434 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %433, i32 0, i32 2
  %435 = load %struct.node_state_t*, %struct.node_state_t** %434, align 8
  %436 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %435, i32 0, i32 4
  %437 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %438 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %437, i32 0, i32 5
  %439 = load i32*, i32** %438, align 8
  %440 = load i8*, i8** %7, align 8
  %441 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %442 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %441, i32 0, i32 2
  %443 = load %struct.node_state_t*, %struct.node_state_t** %442, align 8
  %444 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i32*, i32** %9, align 8
  %447 = call i32 @svn_wc__db_read_props(i32* %436, i32* %439, i8* %440, i32 %445, i32* %446)
  %448 = call i32 @SVN_ERR(i32 %447)
  %449 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %450 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %449, i32 0, i32 2
  %451 = load %struct.node_state_t*, %struct.node_state_t** %450, align 8
  %452 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %455 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %454, i32 0, i32 2
  %456 = load %struct.node_state_t*, %struct.node_state_t** %455, align 8
  %457 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %460 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %459, i32 0, i32 2
  %461 = load %struct.node_state_t*, %struct.node_state_t** %460, align 8
  %462 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @svn_prop_diffs(i32** %24, i32 %453, i32 %458, i32 %463)
  %465 = call i32 @SVN_ERR(i32 %464)
  %466 = load i32*, i32** %24, align 8
  %467 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %468 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %467, i32 0, i32 2
  %469 = load %struct.node_state_t*, %struct.node_state_t** %468, align 8
  %470 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %469, i32 0, i32 1
  store i32* %466, i32** %470, align 8
  br label %471

471:                                              ; preds = %416, %410, %398
  br label %472

472:                                              ; preds = %471, %394
  br label %473

473:                                              ; preds = %472, %382
  br label %474

474:                                              ; preds = %473, %356
  br label %475

475:                                              ; preds = %474, %355
  %476 = load i64, i64* %14, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %568

478:                                              ; preds = %475
  %479 = load i64, i64* %15, align 8
  %480 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %481 = icmp ne i64 %479, %480
  br i1 %481, label %482, label %568

482:                                              ; preds = %478
  store i8* null, i8** %25, align 8
  %483 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 4
  %485 = load i8*, i8** %484, align 8
  %486 = icmp ne i8* %485, null
  br i1 %486, label %487, label %495

487:                                              ; preds = %482
  %488 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %489 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 4
  %493 = load i8*, i8** %492, align 8
  %494 = call i8* @svn_dirent_skip_ancestor(i32 %490, i8* %493)
  store i8* %494, i8** %25, align 8
  br label %495

495:                                              ; preds = %487, %482
  %496 = load i64, i64* %18, align 8
  %497 = load i64, i64* @svn_node_file, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %530

499:                                              ; preds = %495
  %500 = load i32*, i32** %11, align 8
  %501 = load i8*, i8** %20, align 8
  %502 = load i8*, i8** %21, align 8
  %503 = load i8*, i8** %25, align 8
  %504 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %505 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %504, i32 0, i32 3
  %506 = load %struct.TYPE_11__*, %struct.TYPE_11__** %505, align 8
  %507 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %508 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %507, i32 0, i32 2
  %509 = load %struct.node_state_t*, %struct.node_state_t** %508, align 8
  %510 = icmp ne %struct.node_state_t* %509, null
  br i1 %510, label %511, label %517

511:                                              ; preds = %499
  %512 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %513 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %512, i32 0, i32 2
  %514 = load %struct.node_state_t*, %struct.node_state_t** %513, align 8
  %515 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %514, i32 0, i32 0
  %516 = load i32*, i32** %515, align 8
  br label %518

517:                                              ; preds = %499
  br label %518

518:                                              ; preds = %517, %511
  %519 = phi i32* [ %516, %511 ], [ null, %517 ]
  %520 = load i64, i64* @FALSE, align 8
  %521 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %522 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %525 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load i32*, i32** %9, align 8
  %528 = call i32 @svn_wc__diff_local_only_file(i32* %500, i8* %501, i8* %502, i8* %503, %struct.TYPE_11__* %506, i32* %519, i64 %520, i32 %523, i32 %526, i32* %527)
  %529 = call i32 @SVN_ERR(i32 %528)
  br label %567

530:                                              ; preds = %495
  %531 = load i64, i64* %18, align 8
  %532 = load i64, i64* @svn_node_dir, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %566

534:                                              ; preds = %530
  %535 = load i32*, i32** %11, align 8
  %536 = load i8*, i8** %20, align 8
  %537 = load i8*, i8** %21, align 8
  %538 = load i32, i32* %19, align 4
  %539 = load i8*, i8** %25, align 8
  %540 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %541 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %540, i32 0, i32 3
  %542 = load %struct.TYPE_11__*, %struct.TYPE_11__** %541, align 8
  %543 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %544 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %543, i32 0, i32 2
  %545 = load %struct.node_state_t*, %struct.node_state_t** %544, align 8
  %546 = icmp ne %struct.node_state_t* %545, null
  br i1 %546, label %547, label %553

547:                                              ; preds = %534
  %548 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %549 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %548, i32 0, i32 2
  %550 = load %struct.node_state_t*, %struct.node_state_t** %549, align 8
  %551 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %550, i32 0, i32 0
  %552 = load i32*, i32** %551, align 8
  br label %554

553:                                              ; preds = %534
  br label %554

554:                                              ; preds = %553, %547
  %555 = phi i32* [ %552, %547 ], [ null, %553 ]
  %556 = load i64, i64* @FALSE, align 8
  %557 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %558 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %561 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load i32*, i32** %9, align 8
  %564 = call i32 @svn_wc__diff_local_only_dir(i32* %535, i8* %536, i8* %537, i32 %538, i8* %539, %struct.TYPE_11__* %542, i32* %555, i64 %556, i32 %559, i32 %562, i32* %563)
  %565 = call i32 @SVN_ERR(i32 %564)
  br label %566

566:                                              ; preds = %554, %530
  br label %567

567:                                              ; preds = %566, %518
  br label %568

568:                                              ; preds = %567, %478, %475
  %569 = load i64, i64* %18, align 8
  %570 = load i64, i64* @svn_node_dir, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %585

572:                                              ; preds = %568
  %573 = load i64, i64* %14, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %572
  %576 = load i64, i64* %13, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %585

578:                                              ; preds = %575, %572
  %579 = load %struct.diff_baton*, %struct.diff_baton** %10, align 8
  %580 = load i8*, i8** %7, align 8
  %581 = load i64, i64* @TRUE, align 8
  %582 = load i32*, i32** %9, align 8
  %583 = call i32 @ensure_state(%struct.diff_baton* %579, i8* %580, i64 %581, i32* %582)
  %584 = call i32 @SVN_ERR(i32 %583)
  br label %585

585:                                              ; preds = %578, %575, %568
  %586 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %586, i32** %5, align 8
  br label %587

587:                                              ; preds = %585, %251, %193, %68, %55, %35
  %588 = load i32*, i32** %5, align 8
  ret i32* %588
}

declare dso_local i32 @svn_dirent_is_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @ensure_state(%struct.diff_baton*, i8*, i64, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__diff_base_only_file(i32*, i8*, i8*, i32, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__diff_base_only_dir(i32*, i8*, i8*, i32, i32, %struct.TYPE_11__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__diff_base_working_diff(i32*, i8*, i8*, i32, %struct.TYPE_11__*, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_props(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32, i32, i32) #1

declare dso_local i32 @svn_wc__diff_local_only_file(i32*, i8*, i8*, i8*, %struct.TYPE_11__*, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__diff_local_only_dir(i32*, i8*, i8*, i32, i8*, %struct.TYPE_11__*, i32*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
