; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i32, i32, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' already in conflict\00", align 1
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (i32**, %struct.TYPE_22__*, i8*, i8*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i64, i32, i32, i8*, i64, i64, i8*, i32*, i32*)* @create_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @create_tree_conflict(i32** %0, %struct.TYPE_22__* %1, i8* %2, i8* %3, i32* %4, %struct.TYPE_21__* %5, %struct.TYPE_21__* %6, i64 %7, i32 %8, i32 %9, i8* %10, i64 %11, i64 %12, i8* %13, i32* %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca %struct.TYPE_21__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_23__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_21__*, align 8
  %37 = alloca %struct.TYPE_21__*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i8*, align 8
  store i32** %0, i32*** %18, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %19, align 8
  store i8* %2, i8** %20, align 8
  store i8* %3, i8** %21, align 8
  store i32* %4, i32** %22, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %24, align 8
  store i64 %7, i64* %25, align 8
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i8* %10, i8** %28, align 8
  store i64 %11, i64* %29, align 8
  store i64 %12, i64* %30, align 8
  store i8* %13, i8** %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  %47 = load i8*, i8** %31, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %16
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %31, align 8
  %54 = load i32*, i32** %33, align 8
  %55 = call i8* @svn_dirent_join(i32 %52, i8* %53, i32* %54)
  br label %57

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi i8* [ %55, %49 ], [ null, %56 ]
  store i8* %58, i8** %38, align 8
  %59 = load i8*, i8** %28, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %63 = icmp ne %struct.TYPE_21__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %28, align 8
  %69 = call i8* @svn_relpath_skip_ancestor(i8* %67, i8* %68)
  br label %71

70:                                               ; preds = %61, %57
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i8* [ %69, %64 ], [ null, %70 ]
  store i8* %72, i8** %39, align 8
  %73 = load i8*, i8** %39, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %39, align 8
  %80 = load i32*, i32** %33, align 8
  %81 = call i8* @svn_relpath_join(i8* %78, i8* %79, i32* %80)
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %75
  %84 = phi i8* [ %81, %75 ], [ null, %82 ]
  store i8* %84, i8** %40, align 8
  %85 = load i8*, i8** %40, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %21, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = call i8* @svn_relpath_skip_ancestor(i8* %88, i8* %89)
  store i8* %90, i8** %41, align 8
  %91 = load i8*, i8** %41, align 8
  %92 = icmp ne i8* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @SVN_ERR_ASSERT(i32 %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %41, align 8
  %99 = load i32*, i32** %33, align 8
  %100 = call i8* @svn_relpath_join(i8* %97, i8* %98, i32* %99)
  store i8* %100, i8** %40, align 8
  br label %101

101:                                              ; preds = %87, %83
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = load i32*, i32** %32, align 8
  %105 = load i32*, i32** %33, align 8
  %106 = call %struct.TYPE_23__* @svn_wc__db_read_conflict_internal(i32** %35, i32* null, i32* null, %struct.TYPE_22__* %102, i8* %103, i32* %104, i32* %105)
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %34, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %108 = icmp ne %struct.TYPE_23__* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %117 = call %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__* %116)
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %17, align 8
  br label %277

118:                                              ; preds = %109, %101
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %120 = icmp ne %struct.TYPE_23__* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %123 = call i32 @svn_error_clear(%struct.TYPE_23__* %122)
  store i32* null, i32** %35, align 8
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32*, i32** %35, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %199

128:                                              ; preds = %125
  %129 = load i32*, i32** %22, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %35, align 8
  %134 = load i32*, i32** %33, align 8
  %135 = load i32*, i32** %33, align 8
  %136 = call i32 @svn_wc__conflict_read_info(i64* %42, i32* null, i32* null, i32* null, i64* %43, i32* %129, i32 %132, i32* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i64, i64* %42, align 8
  %139 = load i64, i64* @svn_wc_operation_update, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %128
  %142 = load i64, i64* %42, align 8
  %143 = load i64, i64* @svn_wc_operation_switch, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %147 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %149 = load i8*, i8** %20, align 8
  %150 = load i32*, i32** %33, align 8
  %151 = call i32 @path_for_error_message(%struct.TYPE_22__* %148, i8* %149, i32* %150)
  %152 = call %struct.TYPE_23__* @svn_error_createf(i32 %146, i32* null, i32 %147, i32 %151)
  store %struct.TYPE_23__* %152, %struct.TYPE_23__** %17, align 8
  br label %277

153:                                              ; preds = %141, %128
  %154 = load i64, i64* %43, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %198

156:                                              ; preds = %153
  %157 = load i32*, i32** %22, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %35, align 8
  %162 = load i32*, i32** %33, align 8
  %163 = load i32*, i32** %33, align 8
  %164 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %44, i64* %45, i8** %46, i32* %157, i32 %160, i32* %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i64, i64* %29, align 8
  %167 = load i64, i64* %44, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %186, label %169

169:                                              ; preds = %156
  %170 = load i64, i64* %30, align 8
  %171 = load i64, i64* %45, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load i8*, i8** %31, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %46, align 8
  %183 = call i32 @svn_dirent_skip_ancestor(i32 %181, i8* %182)
  %184 = call i64 @strcmp(i8* %178, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %177, %169, %156
  %187 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %188 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %190 = load i8*, i8** %20, align 8
  %191 = load i32*, i32** %33, align 8
  %192 = call i32 @path_for_error_message(%struct.TYPE_22__* %189, i8* %190, i32* %191)
  %193 = call %struct.TYPE_23__* @svn_error_createf(i32 %187, i32* null, i32 %188, i32 %192)
  store %struct.TYPE_23__* %193, %struct.TYPE_23__** %17, align 8
  br label %277

194:                                              ; preds = %177, %173
  %195 = load i32*, i32** %35, align 8
  %196 = load i32**, i32*** %18, align 8
  store i32* %195, i32** %196, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %197, %struct.TYPE_23__** %17, align 8
  br label %277

198:                                              ; preds = %153
  br label %202

199:                                              ; preds = %125
  %200 = load i32*, i32** %32, align 8
  %201 = call i32* @svn_wc__conflict_skel_create(i32* %200)
  store i32* %201, i32** %35, align 8
  br label %202

202:                                              ; preds = %199, %198
  %203 = load i32*, i32** %35, align 8
  %204 = load i32*, i32** %22, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %20, align 8
  %209 = load i32*, i32** %33, align 8
  %210 = call i8* @svn_dirent_join(i32 %207, i8* %208, i32* %209)
  %211 = load i64, i64* %29, align 8
  %212 = load i64, i64* %30, align 8
  %213 = load i8*, i8** %38, align 8
  %214 = load i32*, i32** %32, align 8
  %215 = load i32*, i32** %33, align 8
  %216 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %203, i32* %204, i8* %210, i64 %211, i64 %212, i8* %213, i32* %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %219 = icmp ne %struct.TYPE_21__* %218, null
  br i1 %219, label %220, label %234

220:                                              ; preds = %202
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %28, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %26, align 4
  %232 = load i32*, i32** %33, align 8
  %233 = call %struct.TYPE_21__* @svn_wc_conflict_version_create2(i32 %223, i32 %226, i8* %227, i32 %230, i32 %231, i32* %232)
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %36, align 8
  br label %235

234:                                              ; preds = %202
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %36, align 8
  br label %235

235:                                              ; preds = %234, %220
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** %40, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %27, align 4
  %247 = load i32*, i32** %33, align 8
  %248 = call %struct.TYPE_21__* @svn_wc_conflict_version_create2(i32 %238, i32 %241, i8* %242, i32 %245, i32 %246, i32* %247)
  store %struct.TYPE_21__* %248, %struct.TYPE_21__** %37, align 8
  %249 = load i64, i64* %25, align 8
  %250 = load i64, i64* @svn_wc_operation_update, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %235
  %253 = load i32*, i32** %35, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %256 = load i32*, i32** %32, align 8
  %257 = load i32*, i32** %33, align 8
  %258 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %253, %struct.TYPE_21__* %254, %struct.TYPE_21__* %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  br label %273

260:                                              ; preds = %235
  %261 = load i64, i64* %25, align 8
  %262 = load i64, i64* @svn_wc_operation_switch, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i32*, i32** %35, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %269 = load i32*, i32** %32, align 8
  %270 = load i32*, i32** %33, align 8
  %271 = call i32 @svn_wc__conflict_skel_set_op_switch(i32* %266, %struct.TYPE_21__* %267, %struct.TYPE_21__* %268, i32* %269, i32* %270)
  %272 = call i32 @SVN_ERR(i32 %271)
  br label %273

273:                                              ; preds = %260, %252
  %274 = load i32*, i32** %35, align 8
  %275 = load i32**, i32*** %18, align 8
  store i32* %274, i32** %275, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %276, %struct.TYPE_23__** %17, align 8
  br label %277

277:                                              ; preds = %273, %194, %186, %145, %115
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  ret %struct.TYPE_23__* %278
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_23__* @svn_wc__db_read_conflict_internal(i32**, i32*, i32*, %struct.TYPE_22__*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_23__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i64*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_22__*, i8*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i8**, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32*, i8*, i64, i64, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_wc_conflict_version_create2(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_switch(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
