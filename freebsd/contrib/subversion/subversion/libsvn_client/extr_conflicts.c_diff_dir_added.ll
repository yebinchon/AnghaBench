; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_diff_dir_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_diff_dir_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.svn_diff_tree_processor_t = type { %struct.merge_newly_added_dir_baton* }
%struct.merge_newly_added_dir_baton = type { i8*, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_dir_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_dir_added(i8* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, i8* %5, %struct.svn_diff_tree_processor_t* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.merge_newly_added_dir_baton*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.svn_diff_tree_processor_t* %6, %struct.svn_diff_tree_processor_t** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %16, align 8
  %27 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %26, i32 0, i32 0
  %28 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %27, align 8
  store %struct.merge_newly_added_dir_baton* %28, %struct.merge_newly_added_dir_baton** %18, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %8
  %35 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %36 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %41 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i32 @svn_wc__del_tree_conflict(i32 %39, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %47 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %50 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %54 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %57 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %60 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %63 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %66 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @merge_added_dir_props(i8* %48, i32 %51, i32* %52, i32 %55, i32 %58, i32 %61, i32 %64, %struct.TYPE_6__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %9, align 8
  br label %309

72:                                               ; preds = %8
  %73 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %74 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i8* @svn_dirent_join(i8* %75, i8* %76, i32* %77)
  store i8* %78, i8** %19, align 8
  %79 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %80 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %19, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @svn_wc_read_kind2(i64* %21, i32 %83, i8* %84, i32 %85, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i8*, i8** %19, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @svn_io_check_path(i8* %90, i64* %22, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* @svn_node_dir, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %72
  %98 = load i64, i64* %22, align 8
  %99 = load i64, i64* @svn_node_dir, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %97
  %102 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %103 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = call i8* @svn_dirent_join(i8* %104, i8* %105, i32* %106)
  %108 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %109 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %113 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %116 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %119 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %122 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %125 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @merge_added_dir_props(i8* %107, i32 %110, i32* %111, i32 %114, i32 %117, i32 %120, i32 %123, %struct.TYPE_6__* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %9, align 8
  br label %309

131:                                              ; preds = %97, %72
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* @svn_node_none, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %183

135:                                              ; preds = %131
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* @svn_node_unknown, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %135
  %140 = load i8*, i8** %19, align 8
  %141 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %142 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* @svn_node_none, align 8
  %145 = load i64, i64* @svn_node_dir, align 8
  %146 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %147 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %150 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %153 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = load i32*, i32** %17, align 8
  %157 = call i32 @svn_relpath_join(i32 %154, i8* %155, i32* %156)
  %158 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %159 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %162 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %165 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %170 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %175 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %17, align 8
  %180 = call i32 @raise_tree_conflict(i8* %140, i32 %141, i32 %142, i64 %143, i64 %144, i64 %145, i32 %148, i32 %151, i32 %157, i32 %160, i32 %163, i32 %168, i32 %173, i32 %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %182, i32** %9, align 8
  br label %309

183:                                              ; preds = %135, %131
  %184 = load i64, i64* %22, align 8
  %185 = load i64, i64* @svn_node_none, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %231

187:                                              ; preds = %183
  %188 = load i8*, i8** %19, align 8
  %189 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %190 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* @svn_node_none, align 8
  %193 = load i64, i64* @svn_node_dir, align 8
  %194 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %195 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %198 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %201 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = load i32*, i32** %17, align 8
  %205 = call i32 @svn_relpath_join(i32 %202, i8* %203, i32* %204)
  %206 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %207 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %210 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %213 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %212, i32 0, i32 1
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %218 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %223 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %17, align 8
  %228 = call i32 @raise_tree_conflict(i8* %188, i32 %189, i32 %190, i64 %191, i64 %192, i64 %193, i32 %196, i32 %199, i32 %205, i32 %208, i32 %211, i32 %216, i32 %221, i32 %226, i32* %227)
  %229 = call i32 @SVN_ERR(i32 %228)
  %230 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %230, i32** %9, align 8
  br label %309

231:                                              ; preds = %183
  %232 = load i8*, i8** %19, align 8
  %233 = load i32, i32* @APR_OS_DEFAULT, align 4
  %234 = load i32*, i32** %17, align 8
  %235 = call i32 @svn_io_dir_make(i8* %232, i32 %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i32*, i32** %17, align 8
  %238 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %239 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SVN_VA_NULL, align 4
  %245 = call i8* @apr_pstrcat(i32* %237, i32 %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %243, i32 %244)
  store i8* %245, i8** %20, align 8
  %246 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %247 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %246, i32 0, i32 1
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i8*, i8** %19, align 8
  %252 = load i32, i32* @svn_depth_infinity, align 4
  %253 = load i8*, i8** %20, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %258 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %257, i32 0, i32 1
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %263 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %262, i32 0, i32 1
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %17, align 8
  %268 = call i32 @svn_wc_add4(i32 %250, i8* %251, i32 %252, i8* %253, i32 %256, i32* null, i32* null, i32 %261, i32 %266, i32* %267)
  %269 = call i32 @SVN_ERR(i32 %268)
  %270 = load i32*, i32** %17, align 8
  %271 = load i32*, i32** %14, align 8
  %272 = call i32* @apr_hash_first(i32* %270, i32* %271)
  store i32* %272, i32** %23, align 8
  br label %273

273:                                              ; preds = %304, %231
  %274 = load i32*, i32** %23, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %307

276:                                              ; preds = %273
  %277 = load i32*, i32** %23, align 8
  %278 = call i8* @apr_hash_this_key(i32* %277)
  store i8* %278, i8** %24, align 8
  %279 = load i32*, i32** %23, align 8
  %280 = call i32* @apr_hash_this_val(i32* %279)
  store i32* %280, i32** %25, align 8
  %281 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %282 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %281, i32 0, i32 1
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i8*, i8** %19, align 8
  %287 = load i8*, i8** %24, align 8
  %288 = load i32*, i32** %25, align 8
  %289 = load i32, i32* @svn_depth_empty, align 4
  %290 = load i32, i32* @FALSE, align 4
  %291 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %292 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %291, i32 0, i32 1
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.merge_newly_added_dir_baton*, %struct.merge_newly_added_dir_baton** %18, align 8
  %297 = getelementptr inbounds %struct.merge_newly_added_dir_baton, %struct.merge_newly_added_dir_baton* %296, i32 0, i32 1
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %17, align 8
  %302 = call i32 @svn_wc_prop_set4(i32 %285, i8* %286, i8* %287, i32* %288, i32 %289, i32 %290, i32* null, i32* null, i32* null, i32 %295, i32 %300, i32* %301)
  %303 = call i32 @SVN_ERR(i32 %302)
  br label %304

304:                                              ; preds = %276
  %305 = load i32*, i32** %23, align 8
  %306 = call i32* @apr_hash_next(i32* %305)
  store i32* %306, i32** %23, align 8
  br label %273

307:                                              ; preds = %273
  %308 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %308, i32** %9, align 8
  br label %309

309:                                              ; preds = %307, %187, %139, %101, %34
  %310 = load i32*, i32** %9, align 8
  ret i32* %310
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @merge_added_dir_props(i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @raise_tree_conflict(i8*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @svn_wc_add4(i32, i8*, i32, i8*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_wc_prop_set4(i32, i8*, i8*, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
