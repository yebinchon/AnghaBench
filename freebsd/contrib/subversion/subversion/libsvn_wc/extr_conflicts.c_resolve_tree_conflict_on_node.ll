; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_resolve_tree_conflict_on_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_resolve_tree_conflict_on_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_merged = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc_conflict_choose_mine_conflict = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"Tree conflict can only be resolved to 'working' or 'mine-conflict' state; '%s' not resolved\00", align 1
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_wc_conflict_action_replace = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"Tree conflict can only be resolved to 'working' state; '%s' is no longer moved\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Tree conflict can only be resolved to 'working' state; '%s' not resolved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*, i64, i32*, i32, i8*, i32, i8*, i32*)* @resolve_tree_conflict_on_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_tree_conflict_on_node(i32* %0, i32* %1, i8* %2, i32* %3, i64 %4, i32* %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %23, align 8
  %37 = load i32*, i32** %23, align 8
  %38 = call i32 @svn_wc__conflict_read_info(i64* %26, i32* null, i32* null, i32* null, i32* %27, i32* %33, i8* %34, i32* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %27, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %11
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %12, align 8
  br label %305

44:                                               ; preds = %11
  %45 = load i32*, i32** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = load i32*, i32** %23, align 8
  %50 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %24, i64* %25, i8** %28, i32* %45, i8* %46, i32* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %26, align 8
  %53 = load i64, i64* @svn_wc_operation_update, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %26, align 8
  %57 = load i64, i64* @svn_wc_operation_switch, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %266

59:                                               ; preds = %55, %44
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %163

67:                                               ; preds = %63, %59
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @svn_wc_conflict_choose_merged, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i64, i64* %25, align 8
  %73 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32*, i32** %14, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %28, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i8*, i8** %20, align 8
  %82 = load i32*, i32** %23, align 8
  %83 = call i32 @svn_wc__db_op_break_moved_away(i32* %76, i8* %77, i8* %78, i32 %79, i32 %80, i8* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32, i32* @TRUE, align 4
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %12, align 8
  br label %305

88:                                               ; preds = %71
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %162

91:                                               ; preds = %67
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* @svn_wc_conflict_choose_mine_conflict, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %154

95:                                               ; preds = %91
  %96 = load i32*, i32** %14, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i8*, i8** %20, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = call i32* @svn_wc__db_op_raise_moved_away(i32* %96, i8* %97, i32 %98, i8* %99, i32* %100)
  store i32* %101, i32** %29, align 8
  %102 = load i32*, i32** %29, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load i8*, i8** %15, align 8
  %106 = load i32*, i32** %29, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = call i32 @handle_tree_conflict_resolution_failure(i8* %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  br label %110

110:                                              ; preds = %104, %95
  %111 = load i32*, i32** %14, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = load i32*, i32** %23, align 8
  %115 = call i32 @svn_wc__db_read_conflict(i32** %30, i32* null, i32* null, i32* %111, i8* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** %30, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load i32*, i32** %14, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = load i32*, i32** %30, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = call i32 @svn_wc__conflict_read_info(i64* null, i32* null, i32* null, i32* null, i32* %27, i32* %120, i8* %121, i32* %122, i32* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %127

127:                                              ; preds = %119, %110
  %128 = load i32*, i32** %30, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %27, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* @TRUE, align 4
  %135 = load i32*, i32** %13, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %12, align 8
  br label %305

137:                                              ; preds = %130
  %138 = load i32*, i32** %14, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = load i32*, i32** %30, align 8
  %141 = load i32*, i32** %23, align 8
  %142 = load i32*, i32** %23, align 8
  %143 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %24, i64* %25, i8** %28, i32* %138, i8* %139, i32* %140, i32* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i64, i64* %24, align 8
  %146 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i32, i32* @TRUE, align 4
  %150 = load i32*, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %151, i32** %12, align 8
  br label %305

152:                                              ; preds = %137
  %153 = load i32*, i32** %30, align 8
  store i32* %153, i32** %16, align 8
  br label %161

154:                                              ; preds = %91
  %155 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %156 = call i32 @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %157 = load i8*, i8** %15, align 8
  %158 = load i32*, i32** %23, align 8
  %159 = call i32 @svn_dirent_local_style(i8* %157, i32* %158)
  %160 = call i32* @svn_error_createf(i32 %155, i32* null, i32 %156, i32 %159)
  store i32* %160, i32** %12, align 8
  br label %305

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %88
  br label %163

163:                                              ; preds = %162, %63
  %164 = load i64, i64* %24, align 8
  %165 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %225

167:                                              ; preds = %163
  %168 = load i64, i64* %25, align 8
  %169 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %225

171:                                              ; preds = %167
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @svn_wc_conflict_choose_mine_conflict, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %171
  %176 = load i32*, i32** %14, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i8*, i8** %28, align 8
  %179 = load i64, i64* %26, align 8
  %180 = load i64, i64* %25, align 8
  %181 = load i64, i64* %24, align 8
  %182 = load i32, i32* %21, align 4
  %183 = load i8*, i8** %22, align 8
  %184 = load i32, i32* %19, align 4
  %185 = load i8*, i8** %20, align 8
  %186 = load i32*, i32** %23, align 8
  %187 = call i32* @svn_wc__db_update_moved_away_conflict_victim(i32* %176, i8* %177, i8* %178, i64 %179, i64 %180, i64 %181, i32 %182, i8* %183, i32 %184, i8* %185, i32* %186)
  store i32* %187, i32** %29, align 8
  %188 = load i32*, i32** %29, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %175
  %191 = load i8*, i8** %15, align 8
  %192 = load i32*, i32** %29, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = call i32 @handle_tree_conflict_resolution_failure(i8* %191, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  br label %199

196:                                              ; preds = %175
  %197 = load i32, i32* @TRUE, align 4
  %198 = load i32*, i32** %13, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %190
  br label %224

200:                                              ; preds = %171
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* @svn_wc_conflict_choose_merged, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load i32*, i32** %14, align 8
  %206 = load i8*, i8** %15, align 8
  %207 = load i8*, i8** %28, align 8
  %208 = load i32, i32* @TRUE, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load i8*, i8** %20, align 8
  %211 = load i32*, i32** %23, align 8
  %212 = call i32 @svn_wc__db_op_break_moved_away(i32* %205, i8* %206, i8* %207, i32 %208, i32 %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load i32, i32* @TRUE, align 4
  %215 = load i32*, i32** %13, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %216, i32** %12, align 8
  br label %305

217:                                              ; preds = %200
  %218 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %219 = call i32 @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %220 = load i8*, i8** %15, align 8
  %221 = load i32*, i32** %23, align 8
  %222 = call i32 @svn_dirent_local_style(i8* %220, i32* %221)
  %223 = call i32* @svn_error_createf(i32 %218, i32* null, i32 %219, i32 %222)
  store i32* %223, i32** %12, align 8
  br label %305

224:                                              ; preds = %199
  br label %265

225:                                              ; preds = %167, %163
  %226 = load i64, i64* %24, align 8
  %227 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %225
  %230 = load i64, i64* %25, align 8
  %231 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %264

233:                                              ; preds = %229
  %234 = load i64, i64* %25, align 8
  %235 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load i64, i64* %25, align 8
  %239 = load i64, i64* @svn_wc_conflict_action_replace, align 8
  %240 = icmp eq i64 %238, %239
  br label %241

241:                                              ; preds = %237, %233
  %242 = phi i1 [ true, %233 ], [ %240, %237 ]
  %243 = zext i1 %242 to i32
  %244 = call i32 @SVN_ERR_ASSERT(i32 %243)
  %245 = load i64, i64* %17, align 8
  %246 = load i64, i64* @svn_wc_conflict_choose_merged, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load i32, i32* @TRUE, align 4
  %250 = load i32*, i32** %13, align 8
  store i32 %249, i32* %250, align 4
  br label %263

251:                                              ; preds = %241
  %252 = load i64, i64* %17, align 8
  %253 = load i64, i64* @svn_wc_conflict_choose_mine_conflict, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %257 = call i32 @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %258 = load i8*, i8** %15, align 8
  %259 = load i32*, i32** %23, align 8
  %260 = call i32 @svn_dirent_local_style(i8* %258, i32* %259)
  %261 = call i32* @svn_error_createf(i32 %256, i32* null, i32 %257, i32 %260)
  store i32* %261, i32** %12, align 8
  br label %305

262:                                              ; preds = %251
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263, %229, %225
  br label %265

265:                                              ; preds = %264, %224
  br label %266

266:                                              ; preds = %265, %55
  %267 = load i32*, i32** %13, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %285, label %270

270:                                              ; preds = %266
  %271 = load i64, i64* %17, align 8
  %272 = load i64, i64* @svn_wc_conflict_choose_merged, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %270
  %275 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %276 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %277 = load i8*, i8** %15, align 8
  %278 = load i32*, i32** %23, align 8
  %279 = call i32 @svn_dirent_local_style(i8* %277, i32* %278)
  %280 = call i32* @svn_error_createf(i32 %275, i32* null, i32 %276, i32 %279)
  store i32* %280, i32** %12, align 8
  br label %305

281:                                              ; preds = %270
  %282 = load i32, i32* @TRUE, align 4
  %283 = load i32*, i32** %13, align 8
  store i32 %282, i32* %283, align 4
  br label %284

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %284, %266
  %286 = load i32*, i32** %13, align 8
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @SVN_ERR_ASSERT(i32 %287)
  %289 = load i32*, i32** %14, align 8
  %290 = load i8*, i8** %15, align 8
  %291 = load i32, i32* @FALSE, align 4
  %292 = load i32, i32* @FALSE, align 4
  %293 = load i32, i32* @TRUE, align 4
  %294 = load i32*, i32** %23, align 8
  %295 = call i32 @svn_wc__db_op_mark_resolved(i32* %289, i8* %290, i32 %291, i32 %292, i32 %293, i32* null, i32* %294)
  %296 = call i32 @SVN_ERR(i32 %295)
  %297 = load i32*, i32** %14, align 8
  %298 = load i8*, i8** %15, align 8
  %299 = load i32, i32* %21, align 4
  %300 = load i8*, i8** %22, align 8
  %301 = load i32*, i32** %23, align 8
  %302 = call i32 @svn_wc__wq_run(i32* %297, i8* %298, i32 %299, i8* %300, i32* %301)
  %303 = call i32 @SVN_ERR(i32 %302)
  %304 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %304, i32** %12, align 8
  br label %305

305:                                              ; preds = %285, %274, %255, %217, %204, %154, %148, %133, %75, %42
  %306 = load i32*, i32** %12, align 8
  ret i32* %306
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_break_moved_away(i32*, i8*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32* @svn_wc__db_op_raise_moved_away(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @handle_tree_conflict_resolution_failure(i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict(i32**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_wc__db_update_moved_away_conflict_victim(i32*, i8*, i8*, i64, i64, i64, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
