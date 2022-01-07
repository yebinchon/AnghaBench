; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_alter_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_alter_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_wc_notify_state_unchanged = common dso_local global i32 0, align 4
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i8*, i32*, i32*, i32*, i32*, i32*)* @tc_editor_alter_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_alter_file(%struct.TYPE_16__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %16, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i8* @svn_dirent_join(i32 %41, i8* %42, i32* %43)
  store i8* %44, i8** %19, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %29, align 8
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %31, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @mark_node_edited(%struct.TYPE_16__* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %7
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %8, align 8
  br label %258

56:                                               ; preds = %7
  %57 = load i8*, i8** %19, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @svn_io_check_path(i8* %57, i64* %30, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i64, i64* %30, align 8
  %62 = load i64, i64* @svn_node_none, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = load i64, i64* %30, align 8
  %66 = load i64, i64* @svn_node_file, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* @svn_node_file, align 8
  %72 = load i64, i64* @svn_node_file, align 8
  %73 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %74 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @create_node_tree_conflict(i32** %22, %struct.TYPE_16__* %69, i8* %70, i64 %71, i64 %72, i32 %73, i32 %74, i32* null, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %31, align 4
  br label %80

80:                                               ; preds = %68, %64, %56
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32* %89, i32** %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32* %91, i32** %92, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32* %93, i32** %94, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32* %95, i32** %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @update_working_props(i32* %26, i32** %22, i32** %24, i32** %23, %struct.TYPE_15__* %97, i8* %98, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32, i32* %31, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %201, label %105

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @svn_checksum_match(i32* %107, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %201, label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = load i32, i32* @FALSE, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @svn_wc__internal_file_modified_p(i32* %32, i32 %115, i8* %116, i32 %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32, i32* %32, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %112
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = load i32, i32* @FALSE, align 4
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @svn_wc__wq_build_file_install(i32** %28, i32 %126, i8* %127, i32* null, i32 %128, i32 %129, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32*, i32** %29, align 8
  %135 = load i32*, i32** %28, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32* @svn_wc__wq_merge(i32* %134, i32* %135, i32* %136)
  store i32* %137, i32** %29, align 8
  %138 = load i32, i32* @svn_wc_notify_state_changed, align 4
  store i32 %138, i32* %27, align 4
  br label %200

139:                                              ; preds = %112
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @svn_wc__db_pristine_get_path(i8** %20, i32 %142, i32 %147, i32* %149, i32* %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @svn_wc__db_pristine_get_path(i8** %21, i32 %156, i32 %161, i32* %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %20, align 8
  %172 = load i8*, i8** %21, align 8
  %173 = load i8*, i8** %19, align 8
  %174 = load i8*, i8** %19, align 8
  %175 = load i32*, i32** %23, align 8
  %176 = load i32, i32* @FALSE, align 4
  %177 = load i32*, i32** %24, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = call i32 @svn_wc__internal_merge(i32** %28, i32** %22, i32* %25, i32 %170, i8* %171, i8* %172, i8* %173, i8* %174, i32* null, i32* null, i32* null, i32* %175, i32 %176, i32* null, i32* null, i32* %177, i32 %180, i32 %183, i32* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32*, i32** %29, align 8
  %189 = load i32*, i32** %28, align 8
  %190 = load i32*, i32** %15, align 8
  %191 = call i32* @svn_wc__wq_merge(i32* %188, i32* %189, i32* %190)
  store i32* %191, i32** %29, align 8
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* @svn_wc_merge_conflict, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %139
  %196 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  store i32 %196, i32* %27, align 4
  br label %199

197:                                              ; preds = %139
  %198 = load i32, i32* @svn_wc_notify_state_merged, align 4
  store i32 %198, i32* %27, align 4
  br label %199

199:                                              ; preds = %197, %195
  br label %200

200:                                              ; preds = %199, %123
  br label %203

201:                                              ; preds = %105, %80
  %202 = load i32, i32* @svn_wc_notify_state_unchanged, align 4
  store i32 %202, i32* %27, align 4
  br label %203

203:                                              ; preds = %201, %200
  %204 = load i32*, i32** %22, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %240

206:                                              ; preds = %203
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* null, i32* null, i8** %33, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_17__* %209, i8* %210, i32 %213, i32* %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load i8*, i8** %19, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %33, align 8
  %223 = load i32*, i32** %22, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i64, i64* @svn_node_file, align 8
  %228 = load i32, i32* %31, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = load i32*, i32** %15, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = call i32 @create_conflict_markers(i32** %28, i8* %218, i32 %221, i8* %222, i32* %223, i32 %226, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i64 %227, i32 %231, i32* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load i32*, i32** %29, align 8
  %237 = load i32*, i32** %28, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = call i32* @svn_wc__wq_merge(i32* %236, i32* %237, i32* %238)
  store i32* %239, i32** %29, align 8
  br label %240

240:                                              ; preds = %206, %203
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = load i8*, i8** %10, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @svn_wc_notify_update_update, align 4
  %249 = load i64, i64* @svn_node_file, align 8
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i32*, i32** %22, align 8
  %253 = load i32*, i32** %29, align 8
  %254 = load i32*, i32** %15, align 8
  %255 = call i32 @update_move_list_add(%struct.TYPE_17__* %243, i8* %244, i32 %247, i32 %248, i64 %249, i32 %250, i32 %251, i32* %252, i32* %253, i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  %257 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %257, i32** %8, align 8
  br label %258

258:                                              ; preds = %240, %54
  %259 = load i32*, i32** %8, align 8
  ret i32* %259
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_node_edited(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_16__*, i8*, i64, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @update_working_props(i32*, i32**, i32**, i32**, %struct.TYPE_15__*, i8*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_merge(i32**, i32**, i32*, i32, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @create_conflict_markers(i32**, i8*, i32, i8*, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_17__*, i8*, i32, i32, i64, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
