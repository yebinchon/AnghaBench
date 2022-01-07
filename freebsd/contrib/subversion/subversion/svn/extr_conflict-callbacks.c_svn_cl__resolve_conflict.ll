; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_svn_cl__resolve_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_svn_cl__resolve_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i64 }

@svn_cl__accept_unspecified = common dso_local global i64 0, align 8
@svn_client_conflict_option_unspecified = common dso_local global i64 0, align 8
@svn_cl__accept_postpone = common dso_local global i64 0, align 8
@svn_client_conflict_option_postpone = common dso_local global i64 0, align 8
@svn_cl__accept_base = common dso_local global i64 0, align 8
@svn_client_conflict_option_base_text = common dso_local global i64 0, align 8
@svn_cl__accept_working = common dso_local global i64 0, align 8
@svn_client_conflict_option_merged_text = common dso_local global i64 0, align 8
@svn_client_conflict_option_working_text = common dso_local global i64 0, align 8
@svn_client_conflict_option_accept_current_wc_state = common dso_local global i64 0, align 8
@svn_cl__accept_theirs_conflict = common dso_local global i64 0, align 8
@svn_client_conflict_option_incoming_text_where_conflicted = common dso_local global i64 0, align 8
@svn_cl__accept_mine_conflict = common dso_local global i64 0, align 8
@svn_client_conflict_option_working_text_where_conflicted = common dso_local global i64 0, align 8
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_client_conflict_option_update_move_destination = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_client_conflict_option_update_any_moved_away_children = common dso_local global i64 0, align 8
@svn_cl__accept_theirs_full = common dso_local global i64 0, align 8
@svn_client_conflict_option_incoming_text = common dso_local global i64 0, align 8
@svn_cl__accept_mine_full = common dso_local global i64 0, align 8
@svn_cl__accept_edit = common dso_local global i64 0, align 8
@SVN_ERR_CL_NO_EXTERNAL_EDITOR = common dso_local global i64 0, align 8
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@svn_cl__accept_launch = common dso_local global i64 0, align 8
@SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL = common dso_local global i64 0, align 8
@svn_cl__accept_recommended = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"svn: \00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_25__* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @svn_cl__resolve_conflict(i64* %0, i64* %1, i64* %2, i32* %3, i64 %4, i8* %5, i8* %6, i32* %7, i32* %8, %struct.TYPE_26__* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_27__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_25__*, align 8
  %35 = alloca [1024 x i8], align 16
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.TYPE_25__*, align 8
  %42 = alloca [1024 x i8], align 16
  %43 = alloca i8*, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca %struct.TYPE_25__*, align 8
  store i64* %0, i64** %13, align 8
  store i64* %1, i64** %14, align 8
  store i64* %2, i64** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store %struct.TYPE_26__* %9, %struct.TYPE_26__** %22, align 8
  store i32* %10, i32** %23, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %23, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = call %struct.TYPE_25__* @svn_client_conflict_get_conflicted(i64* %24, %struct.TYPE_27__** %25, i64* %26, i32* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(%struct.TYPE_25__* %52)
  %54 = load i32*, i32** %16, align 8
  %55 = call i8* @svn_client_conflict_get_local_abspath(i32* %54)
  store i8* %55, i8** %27, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* @svn_cl__accept_unspecified, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %11
  %60 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  store i64 %60, i64* %28, align 8
  br label %354

61:                                               ; preds = %11
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* @svn_cl__accept_postpone, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  store i64 %66, i64* %28, align 8
  br label %353

67:                                               ; preds = %61
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @svn_cl__accept_base, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @svn_client_conflict_option_base_text, align 8
  store i64 %72, i64* %28, align 8
  br label %352

73:                                               ; preds = %67
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* @svn_cl__accept_working, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  store i64 %78, i64* %28, align 8
  %79 = load i64, i64* %24, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32*, i32** %16, align 8
  %83 = call i8* @svn_client_conflict_text_get_mime_type(i32* %82)
  store i8* %83, i8** %29, align 8
  %84 = load i8*, i8** %29, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8*, i8** %29, align 8
  %88 = call i64 @svn_mime_type_is_binary(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i64, i64* @svn_client_conflict_option_working_text, align 8
  store i64 %91, i64* %28, align 8
  br label %92

92:                                               ; preds = %90, %86, %81
  br label %99

93:                                               ; preds = %77
  %94 = load i64, i64* %26, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i64, i64* @svn_client_conflict_option_accept_current_wc_state, align 8
  store i64 %97, i64* %28, align 8
  br label %98

98:                                               ; preds = %96, %93
  br label %99

99:                                               ; preds = %98, %92
  br label %351

100:                                              ; preds = %73
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* @svn_cl__accept_theirs_conflict, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @svn_client_conflict_option_incoming_text_where_conflicted, align 8
  store i64 %105, i64* %28, align 8
  br label %350

106:                                              ; preds = %100
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @svn_cl__accept_mine_conflict, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %106
  %111 = load i64, i64* @svn_client_conflict_option_working_text_where_conflicted, align 8
  store i64 %111, i64* %28, align 8
  %112 = load i64, i64* %26, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %158

114:                                              ; preds = %110
  %115 = load i32*, i32** %16, align 8
  %116 = call i64 @svn_client_conflict_get_operation(i32* %115)
  store i64 %116, i64* %30, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* @svn_wc_operation_update, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load i64, i64* %30, align 8
  %122 = load i64, i64* @svn_wc_operation_switch, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %120, %114
  %125 = load i32*, i32** %16, align 8
  %126 = call i64 @svn_client_conflict_get_local_change(i32* %125)
  store i64 %126, i64* %31, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i64, i64* @svn_client_conflict_option_update_move_destination, align 8
  store i64 %131, i64* %28, align 8
  br label %156

132:                                              ; preds = %124
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %31, align 8
  %138 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136, %132
  %141 = load i32*, i32** %16, align 8
  %142 = call i64 @svn_client_conflict_get_incoming_change(i32* %141)
  store i64 %142, i64* %32, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = call i64 @svn_client_conflict_tree_get_victim_node_kind(i32* %143)
  store i64 %144, i64* %33, align 8
  %145 = load i64, i64* %32, align 8
  %146 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i64, i64* %33, align 8
  %150 = load i64, i64* @svn_node_dir, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* @svn_client_conflict_option_update_any_moved_away_children, align 8
  store i64 %153, i64* %28, align 8
  br label %154

154:                                              ; preds = %152, %148, %140
  br label %155

155:                                              ; preds = %154, %136
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %120
  br label %158

158:                                              ; preds = %157, %110
  br label %349

159:                                              ; preds = %106
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* @svn_cl__accept_theirs_full, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i64, i64* @svn_client_conflict_option_incoming_text, align 8
  store i64 %164, i64* %28, align 8
  br label %348

165:                                              ; preds = %159
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* @svn_cl__accept_mine_full, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i64, i64* @svn_client_conflict_option_working_text, align 8
  store i64 %170, i64* %28, align 8
  br label %347

171:                                              ; preds = %165
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @svn_cl__accept_edit, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %231

175:                                              ; preds = %171
  %176 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  store i64 %176, i64* %28, align 8
  %177 = load i8*, i8** %27, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %230

179:                                              ; preds = %175
  %180 = load i64*, i64** %14, align 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  store i64 %184, i64* %28, align 8
  br label %229

185:                                              ; preds = %179
  %186 = load i8*, i8** %27, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %23, align 8
  %192 = call %struct.TYPE_25__* @svn_cmdline__edit_file_externally(i8* %186, i8* %187, i32 %190, i32* %191)
  store %struct.TYPE_25__* %192, %struct.TYPE_25__** %34, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %194 = icmp ne %struct.TYPE_25__* %193, null
  br i1 %194, label %195, label %220

195:                                              ; preds = %185
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @SVN_ERR_CL_NO_EXTERNAL_EDITOR, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SVN_ERR_EXTERNAL_PROGRAM, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %201, %195
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %209 = getelementptr inbounds [1024 x i8], [1024 x i8]* %35, i64 0, i64 0
  %210 = call i8* @svn_err_best_message(%struct.TYPE_25__* %208, i8* %209, i32 1024)
  store i8* %210, i8** %36, align 8
  %211 = load i32, i32* @stderr, align 4
  %212 = load i32*, i32** %23, align 8
  %213 = load i8*, i8** %36, align 8
  %214 = call %struct.TYPE_25__* @svn_cmdline_fprintf(i32 %211, i32* %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %213)
  %215 = call i32 @SVN_ERR(%struct.TYPE_25__* %214)
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %217 = call i32 @svn_error_clear(%struct.TYPE_25__* %216)
  %218 = load i64, i64* @TRUE, align 8
  %219 = load i64*, i64** %14, align 8
  store i64 %218, i64* %219, align 8
  br label %227

220:                                              ; preds = %201, %185
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %222 = icmp ne %struct.TYPE_25__* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %225 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %224)
  store %struct.TYPE_25__* %225, %struct.TYPE_25__** %12, align 8
  br label %436

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %207
  %228 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  store i64 %228, i64* %28, align 8
  br label %229

229:                                              ; preds = %227, %183
  br label %230

230:                                              ; preds = %229, %175
  br label %346

231:                                              ; preds = %171
  %232 = load i64, i64* %17, align 8
  %233 = load i64, i64* @svn_cl__accept_launch, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %318

235:                                              ; preds = %231
  store i8* null, i8** %37, align 8
  store i8* null, i8** %38, align 8
  store i8* null, i8** %39, align 8
  %236 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  store i64 %236, i64* %28, align 8
  %237 = load i64, i64* %24, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i32*, i32** %16, align 8
  %241 = load i32*, i32** %23, align 8
  %242 = load i32*, i32** %23, align 8
  %243 = call %struct.TYPE_25__* @svn_client_conflict_text_get_contents(i32* null, i8** %38, i8** %37, i8** %39, i32* %240, i32* %241, i32* %242)
  %244 = call i32 @SVN_ERR(%struct.TYPE_25__* %243)
  br label %245

245:                                              ; preds = %239, %235
  %246 = load i8*, i8** %37, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %317

248:                                              ; preds = %245
  %249 = load i8*, i8** %39, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %317

251:                                              ; preds = %248
  %252 = load i8*, i8** %38, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %317

254:                                              ; preds = %251
  %255 = load i8*, i8** %27, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %317

257:                                              ; preds = %254
  %258 = load i64*, i64** %14, align 8
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  store i64 %262, i64* %28, align 8
  br label %316

263:                                              ; preds = %257
  %264 = load i8*, i8** %37, align 8
  %265 = load i8*, i8** %39, align 8
  %266 = load i8*, i8** %38, align 8
  %267 = load i8*, i8** %27, align 8
  %268 = load i8*, i8** %27, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %23, align 8
  %273 = call %struct.TYPE_25__* @svn_cl__merge_file_externally(i8* %264, i8* %265, i8* %266, i8* %267, i8* %268, i32 %271, i64* %40, i32* %272)
  store %struct.TYPE_25__* %273, %struct.TYPE_25__** %41, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %275 = icmp ne %struct.TYPE_25__* %274, null
  br i1 %275, label %276, label %301

276:                                              ; preds = %263
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %288, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @SVN_ERR_EXTERNAL_PROGRAM, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %282, %276
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %290 = getelementptr inbounds [1024 x i8], [1024 x i8]* %42, i64 0, i64 0
  %291 = call i8* @svn_err_best_message(%struct.TYPE_25__* %289, i8* %290, i32 1024)
  store i8* %291, i8** %43, align 8
  %292 = load i32, i32* @stderr, align 4
  %293 = load i32*, i32** %23, align 8
  %294 = load i8*, i8** %43, align 8
  %295 = call %struct.TYPE_25__* @svn_cmdline_fprintf(i32 %292, i32* %293, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %294)
  %296 = call i32 @SVN_ERR(%struct.TYPE_25__* %295)
  %297 = load i64, i64* @TRUE, align 8
  %298 = load i64*, i64** %14, align 8
  store i64 %297, i64* %298, align 8
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %300 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %299)
  store %struct.TYPE_25__* %300, %struct.TYPE_25__** %12, align 8
  br label %436

301:                                              ; preds = %282, %263
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %303 = icmp ne %struct.TYPE_25__* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %306 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %305)
  store %struct.TYPE_25__* %306, %struct.TYPE_25__** %12, align 8
  br label %436

307:                                              ; preds = %301
  br label %308

308:                                              ; preds = %307
  %309 = load i64, i64* %40, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  store i64 %312, i64* %28, align 8
  br label %315

313:                                              ; preds = %308
  %314 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  store i64 %314, i64* %28, align 8
  br label %315

315:                                              ; preds = %313, %311
  br label %316

316:                                              ; preds = %315, %261
  br label %317

317:                                              ; preds = %316, %254, %251, %248, %245
  br label %345

318:                                              ; preds = %231
  %319 = load i64, i64* %17, align 8
  %320 = load i64, i64* @svn_cl__accept_recommended, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %342

322:                                              ; preds = %318
  %323 = load i64, i64* %26, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32*, i32** %16, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %328 = load i32*, i32** %23, align 8
  %329 = call %struct.TYPE_25__* @svn_client_conflict_tree_get_details(i32* %326, %struct.TYPE_26__* %327, i32* %328)
  %330 = call i32 @SVN_ERR(%struct.TYPE_25__* %329)
  br label %331

331:                                              ; preds = %325, %322
  %332 = load i32*, i32** %16, align 8
  %333 = call i64 @svn_client_conflict_get_recommended_option_id(i32* %332)
  store i64 %333, i64* %44, align 8
  %334 = load i64, i64* %44, align 8
  %335 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i64, i64* %44, align 8
  store i64 %338, i64* %28, align 8
  br label %341

339:                                              ; preds = %331
  %340 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  store i64 %340, i64* %28, align 8
  br label %341

341:                                              ; preds = %339, %337
  br label %344

342:                                              ; preds = %318
  %343 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %344

344:                                              ; preds = %342, %341
  br label %345

345:                                              ; preds = %344, %317
  br label %346

346:                                              ; preds = %345, %230
  br label %347

347:                                              ; preds = %346, %169
  br label %348

348:                                              ; preds = %347, %163
  br label %349

349:                                              ; preds = %348, %158
  br label %350

350:                                              ; preds = %349, %104
  br label %351

351:                                              ; preds = %350, %99
  br label %352

352:                                              ; preds = %351, %71
  br label %353

353:                                              ; preds = %352, %65
  br label %354

354:                                              ; preds = %353, %59
  %355 = load i64, i64* %28, align 8
  %356 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %412

358:                                              ; preds = %354
  %359 = load i64, i64* @FALSE, align 8
  store i64 %359, i64* %45, align 8
  %360 = load i64, i64* @FALSE, align 8
  store i64 %360, i64* %46, align 8
  %361 = load i64, i64* @FALSE, align 8
  store i64 %361, i64* %47, align 8
  %362 = load i64, i64* @FALSE, align 8
  %363 = load i64*, i64** %13, align 8
  store i64 %362, i64* %363, align 8
  br label %364

364:                                              ; preds = %408, %358
  %365 = load i64, i64* %45, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %375, label %367

367:                                              ; preds = %364
  %368 = load i64, i64* %46, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %367
  %371 = load i64*, i64** %13, align 8
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  %374 = xor i1 %373, true
  br label %375

375:                                              ; preds = %370, %367, %364
  %376 = phi i1 [ false, %367 ], [ false, %364 ], [ %374, %370 ]
  br i1 %376, label %377, label %411

377:                                              ; preds = %375
  %378 = load i64*, i64** %13, align 8
  %379 = load i64*, i64** %14, align 8
  %380 = load i64*, i64** %15, align 8
  %381 = load i32*, i32** %16, align 8
  %382 = load i8*, i8** %18, align 8
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i8*, i8** %19, align 8
  %387 = load i32*, i32** %20, align 8
  %388 = load i32*, i32** %21, align 8
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %390 = load i32*, i32** %23, align 8
  %391 = load i32*, i32** %23, align 8
  %392 = call %struct.TYPE_25__* @resolve_conflict_interactively(i64* %45, i64* %46, i64* %378, i64* %379, i64* %380, i64* %47, i32* %381, i8* %382, i32 %385, i8* %386, i32* %387, i32* %388, %struct.TYPE_26__* %389, i32* %390, i32* %391)
  store %struct.TYPE_25__* %392, %struct.TYPE_25__** %48, align 8
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %394 = icmp ne %struct.TYPE_25__* %393, null
  br i1 %394, label %395, label %408

395:                                              ; preds = %377
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %408

401:                                              ; preds = %395
  %402 = load i32, i32* @stderr, align 4
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %404 = call i32 @svn_handle_warning2(i32 %402, %struct.TYPE_25__* %403, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %406 = call i32 @svn_error_clear(%struct.TYPE_25__* %405)
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_25__* %407, %struct.TYPE_25__** %48, align 8
  br label %408

408:                                              ; preds = %401, %395, %377
  %409 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %410 = call i32 @SVN_ERR(%struct.TYPE_25__* %409)
  br label %364

411:                                              ; preds = %375
  br label %434

412:                                              ; preds = %354
  %413 = load i64, i64* %28, align 8
  %414 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %433

416:                                              ; preds = %412
  %417 = load i32*, i32** %16, align 8
  %418 = load i64, i64* %28, align 8
  %419 = load i64, i64* %24, align 8
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp sgt i64 %422, 0
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* null
  %426 = load i64, i64* %26, align 8
  %427 = load i8*, i8** %19, align 8
  %428 = load i32*, i32** %21, align 8
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %430 = load i32*, i32** %23, align 8
  %431 = call %struct.TYPE_25__* @mark_conflict_resolved(i32* %417, i64 %418, i64 %419, i8* %425, i64 %426, i8* %427, i32* %428, %struct.TYPE_26__* %429, i32* %430)
  %432 = call i32 @SVN_ERR(%struct.TYPE_25__* %431)
  br label %433

433:                                              ; preds = %416, %412
  br label %434

434:                                              ; preds = %433, %411
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_25__* %435, %struct.TYPE_25__** %12, align 8
  br label %436

436:                                              ; preds = %434, %304, %288, %223
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  ret %struct.TYPE_25__* %437
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_client_conflict_get_conflicted(i64*, %struct.TYPE_27__**, i64*, i32*, i32*, i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i8* @svn_client_conflict_text_get_mime_type(i32*) #1

declare dso_local i64 @svn_mime_type_is_binary(i8*) #1

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(i32*) #1

declare dso_local %struct.TYPE_25__* @svn_cmdline__edit_file_externally(i8*, i8*, i32, i32*) #1

declare dso_local i8* @svn_err_best_message(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local %struct.TYPE_25__* @svn_cmdline_fprintf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_client_conflict_text_get_contents(i32*, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_cl__merge_file_externally(i8*, i8*, i8*, i8*, i8*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_client_conflict_tree_get_details(i32*, %struct.TYPE_26__*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_recommended_option_id(i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local %struct.TYPE_25__* @resolve_conflict_interactively(i64*, i64*, i64*, i64*, i64*, i64*, i32*, i8*, i32, i8*, i32*, i32*, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @svn_handle_warning2(i32, %struct.TYPE_25__*, i8*) #1

declare dso_local %struct.TYPE_25__* @mark_conflict_resolved(i32*, i64, i64, i8*, i64, i8*, i32*, %struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
