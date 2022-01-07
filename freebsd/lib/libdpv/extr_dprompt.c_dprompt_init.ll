; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.dpv_file_node = type { i8*, %struct.dpv_file_node* }

@use_libdialog = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@backtitle = common dso_local global i32* null, align 8
@label_size = common dso_local global i32 0, align 4
@pbar_size = common dso_local global i32 0, align 4
@dwidth = common dso_local global i32 0, align 4
@dheight = common dso_local global i32 0, align 4
@use_shadow = common dso_local global i64 0, align 8
@pprompt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"`-p text' is %i line%s long\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@use_dialog = common dso_local global i64 0, align 8
@use_xdialog = common dso_local global i64 0, align 8
@display_limit = common dso_local global i32 0, align 4
@DPV_DISPLAY_LIMIT = common dso_local global i32 0, align 4
@dpv_nfiles = common dso_local global i32 0, align 4
@fheight = common dso_local global i32 0, align 4
@aprompt = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"`-a text' is %i line%s long\00", align 1
@wide = common dso_local global i64 0, align 8
@no_labels = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"dheight = %i dwidth = %i fheight = %i\00", align 1
@pct_lsize = common dso_local global i32 0, align 4
@pct_rsize = common dso_local global i32 0, align 4
@done = common dso_local global i8* null, align 8
@msg_done = common dso_local global i8* null, align 8
@ENV_MSG_DONE = common dso_local global i32 0, align 4
@done_size = common dso_local global i32 0, align 4
@DPV_DONE_DEFAULT = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@FM_DONE = common dso_local global i32 0, align 4
@dprompt_free_mask = common dso_local global i32 0, align 4
@done_rsize = common dso_local global i32 0, align 4
@done_lsize = common dso_local global i32 0, align 4
@fail = common dso_local global i8* null, align 8
@msg_fail = common dso_local global i8* null, align 8
@ENV_MSG_FAIL = common dso_local global i32 0, align 4
@fail_size = common dso_local global i32 0, align 4
@DPV_FAIL_DEFAULT = common dso_local global i8* null, align 8
@FM_FAIL = common dso_local global i32 0, align 4
@fail_rsize = common dso_local global i32 0, align 4
@fail_lsize = common dso_local global i32 0, align 4
@pend = common dso_local global i8* null, align 8
@msg_pending = common dso_local global i8* null, align 8
@ENV_MSG_PENDING = common dso_local global i32 0, align 4
@pend_size = common dso_local global i32 0, align 4
@DPV_PENDING_DEFAULT = common dso_local global i8* null, align 8
@FM_PEND = common dso_local global i32 0, align 4
@pend_rsize = common dso_local global i32 0, align 4
@pend_lsize = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"label_size = %i pbar_size = %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dprompt_init(%struct.dpv_file_node* %0) #0 {
  %2 = alloca %struct.dpv_file_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpv_file_node*, align 8
  store %struct.dpv_file_node* %0, %struct.dpv_file_node** %2, align 8
  store i64 0, i64* %3, align 8
  %10 = load i64, i64* @use_libdialog, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i64, i64* @debug, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @stdin, align 4
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @init_dialog(i32 %16, i32 %17)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %19 = load i32*, i32** @backtitle, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** @backtitle, align 8
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %24 = call i32 (...) @dlg_put_backtitle()
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25, %12, %1
  %27 = load i32, i32* @label_size, align 4
  %28 = load i32, i32* @pbar_size, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 9
  store i32 %30, i32* @dwidth, align 4
  store i32 5, i32* @dheight, align 4
  %31 = call i32 (...) @dialog_maxrows()
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** @backtitle, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i64, i64* @use_shadow, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 3, i32 2
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i64, i64* @use_libdialog, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* @use_shadow, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44, %41
  %51 = load i8*, i8** @pprompt, align 8
  %52 = call i32 @dialog_prompt_numlines(i8* %51, i64 0)
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* @debug, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @dheight, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* @dheight, align 4
  %66 = load i64, i64* @use_dialog, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i8*, i8** @pprompt, align 8
  %70 = call i64 @dialog_prompt_nlstate(i8* %69)
  %71 = load i32, i32* @dheight, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @dheight, align 4
  %75 = load i8*, i8** @pprompt, align 8
  %76 = call i64 @dialog_prompt_nlstate(i8* %75)
  store i64 %76, i64* %3, align 8
  br label %109

77:                                               ; preds = %62
  %78 = load i64, i64* @use_xdialog, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i8*, i8** @pprompt, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** @pprompt, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %80
  %89 = load i32, i32* @dheight, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @dheight, align 4
  br label %91

91:                                               ; preds = %88, %83
  br label %108

92:                                               ; preds = %77
  %93 = load i64, i64* @use_libdialog, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i8*, i8** @pprompt, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8*, i8** @pprompt, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @dheight, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* @dheight, align 4
  br label %106

106:                                              ; preds = %103, %98, %95
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %91
  br label %109

109:                                              ; preds = %108, %68
  %110 = load i32, i32* @display_limit, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @display_limit, align 4
  %114 = load i32, i32* @DPV_DISPLAY_LIMIT, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %109
  %117 = load i32, i32* @DPV_DISPLAY_LIMIT, align 4
  store i32 %117, i32* @display_limit, align 4
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %190, %118
  %120 = load i32, i32* @display_limit, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %193

122:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %123 = load i32, i32* @dpv_nfiles, align 4
  %124 = load i32, i32* @display_limit, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @display_limit, align 4
  br label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @dpv_nfiles, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  store i32 %131, i32* @fheight, align 4
  %132 = load %struct.dpv_file_node*, %struct.dpv_file_node** %2, align 8
  store %struct.dpv_file_node* %132, %struct.dpv_file_node** %9, align 8
  br label %133

133:                                              ; preds = %158, %130
  %134 = load %struct.dpv_file_node*, %struct.dpv_file_node** %9, align 8
  %135 = icmp ne %struct.dpv_file_node* %134, null
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load %struct.dpv_file_node*, %struct.dpv_file_node** %9, align 8
  %140 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* %3, align 8
  %143 = call i32 @dialog_prompt_numlines(i8* %141, i64 %142)
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @display_limit, align 4
  %148 = srem i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %136
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @fheight, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* @fheight, align 4
  br label %156

156:                                              ; preds = %154, %150
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %156, %136
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.dpv_file_node*, %struct.dpv_file_node** %9, align 8
  %160 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %159, i32 0, i32 1
  %161 = load %struct.dpv_file_node*, %struct.dpv_file_node** %160, align 8
  store %struct.dpv_file_node* %161, %struct.dpv_file_node** %9, align 8
  br label %133

162:                                              ; preds = %133
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @fheight, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* @fheight, align 4
  br label %168

168:                                              ; preds = %166, %162
  %169 = load i32, i32* @dheight, align 4
  %170 = load i32, i32* @fheight, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i8*, i8** @aprompt, align 8
  %173 = load i64, i64* @use_dialog, align 8
  %174 = call i32 @dialog_prompt_numlines(i8* %172, i64 %173)
  %175 = add nsw i32 %171, %174
  %176 = load i64, i64* @use_dialog, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i8*, i8** @aprompt, align 8
  %180 = call i64 @dialog_prompt_nlstate(i8* %179)
  %181 = trunc i64 %180 to i32
  br label %183

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i32 [ %181, %178 ], [ 0, %182 ]
  %185 = sub nsw i32 %175, %184
  %186 = load i32, i32* %6, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %193

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* @display_limit, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* @display_limit, align 4
  br label %119

193:                                              ; preds = %188, %119
  %194 = load i32, i32* %6, align 4
  %195 = load i64, i64* @use_shadow, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 5, i32 4
  %199 = sub nsw i32 %194, %198
  %200 = load i32, i32* @fheight, align 4
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load i32, i32* @fheight, align 4
  %204 = load i32, i32* @dheight, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* @dheight, align 4
  br label %207

206:                                              ; preds = %193
  store i32 0, i32* @fheight, align 4
  br label %207

207:                                              ; preds = %206, %202
  %208 = load i8*, i8** @aprompt, align 8
  %209 = load i64, i64* @use_dialog, align 8
  %210 = call i32 @dialog_prompt_numlines(i8* %208, i64 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i64, i64* @debug, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp eq i32 %215, 1
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %219 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %214, i8* %218)
  br label %220

220:                                              ; preds = %213, %207
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @dheight, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* @dheight, align 4
  %224 = load i64, i64* @use_xdialog, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %220
  %227 = load i32, i32* @dheight, align 4
  %228 = sdiv i32 %227, 4
  %229 = load i32, i32* @dheight, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* @dheight, align 4
  br label %231

231:                                              ; preds = %226, %220
  %232 = load i64, i64* @wide, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %231
  %235 = load i8*, i8** @pprompt, align 8
  %236 = call i64 @dialog_prompt_longestline(i8* %235, i32 0)
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, 4
  %240 = load i32, i32* @dwidth, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %234
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 4
  store i32 %244, i32* @dwidth, align 4
  br label %245

245:                                              ; preds = %242, %234
  %246 = load i8*, i8** @aprompt, align 8
  %247 = call i64 @dialog_prompt_longestline(i8* %246, i32 1)
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %4, align 4
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 4
  %251 = load i32, i32* @dwidth, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %245
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, 4
  store i32 %255, i32* @dwidth, align 4
  br label %256

256:                                              ; preds = %253, %245
  br label %257

257:                                              ; preds = %256, %231
  %258 = call i32 (...) @dialog_maxcols()
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %257
  %262 = load i32, i32* @dwidth, align 4
  %263 = load i32, i32* %5, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i32, i32* %5, align 4
  store i32 %266, i32* @dwidth, align 4
  br label %267

267:                                              ; preds = %265, %261, %257
  %268 = load i32, i32* @pbar_size, align 4
  %269 = load i32, i32* @dwidth, align 4
  %270 = sub nsw i32 %269, 9
  %271 = icmp sgt i32 %268, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i32, i32* @dwidth, align 4
  %274 = sub nsw i32 %273, 9
  store i32 %274, i32* @pbar_size, align 4
  store i32 0, i32* @label_size, align 4
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32, i32* @pbar_size, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* @dwidth, align 4
  %280 = sub nsw i32 %279, 8
  store i32 %280, i32* @label_size, align 4
  br label %303

281:                                              ; preds = %275
  %282 = load i32, i32* @label_size, align 4
  %283 = load i32, i32* @dwidth, align 4
  %284 = load i32, i32* @pbar_size, align 4
  %285 = sub nsw i32 %283, %284
  %286 = sub nsw i32 %285, 9
  %287 = icmp sgt i32 %282, %286
  br i1 %287, label %291, label %288

288:                                              ; preds = %281
  %289 = load i64, i64* @wide, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %288, %281
  %292 = load i64, i64* @no_labels, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %300

295:                                              ; preds = %291
  %296 = load i32, i32* @dwidth, align 4
  %297 = load i32, i32* @pbar_size, align 4
  %298 = sub nsw i32 %296, %297
  %299 = sub nsw i32 %298, 9
  br label %300

300:                                              ; preds = %295, %294
  %301 = phi i32 [ 0, %294 ], [ %299, %295 ]
  store i32 %301, i32* @label_size, align 4
  br label %302

302:                                              ; preds = %300, %288
  br label %303

303:                                              ; preds = %302, %278
  %304 = load i64, i64* @no_labels, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 0, i32* @label_size, align 4
  br label %307

307:                                              ; preds = %306, %303
  %308 = load i8*, i8** @pprompt, align 8
  %309 = load i32, i32* @dwidth, align 4
  %310 = sub nsw i32 %309, 4
  %311 = call i64 @dialog_prompt_wrappedlines(i8* %308, i32 %310, i32 0)
  %312 = load i32, i32* @dheight, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* @dheight, align 4
  %316 = load i8*, i8** @aprompt, align 8
  %317 = load i32, i32* @dwidth, align 4
  %318 = sub nsw i32 %317, 4
  %319 = call i64 @dialog_prompt_wrappedlines(i8* %316, i32 %318, i32 1)
  %320 = load i32, i32* @dheight, align 4
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %321, %319
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* @dheight, align 4
  %324 = load i64, i64* @debug, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %307
  %327 = load i32, i32* @dheight, align 4
  %328 = load i32, i32* @dwidth, align 4
  %329 = load i32, i32* @fheight, align 4
  %330 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %327, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %326, %307
  %332 = load i32, i32* @pbar_size, align 4
  %333 = sub nsw i32 %332, 4
  %334 = sdiv i32 %333, 2
  store i32 %334, i32* @pct_lsize, align 4
  %335 = load i32, i32* @pct_lsize, align 4
  store i32 %335, i32* @pct_rsize, align 4
  %336 = load i32, i32* @pct_rsize, align 4
  %337 = load i32, i32* @pct_rsize, align 4
  %338 = add nsw i32 %336, %337
  %339 = add nsw i32 %338, 4
  %340 = load i32, i32* @pbar_size, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %331
  %343 = load i32, i32* @pct_rsize, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* @pct_rsize, align 4
  br label %345

345:                                              ; preds = %342, %331
  %346 = load i8*, i8** @done, align 8
  %347 = icmp eq i8* %346, null
  br i1 %347, label %348, label %378

348:                                              ; preds = %345
  %349 = load i8*, i8** @msg_done, align 8
  store i8* %349, i8** @done, align 8
  %350 = icmp eq i8* %349, null
  br i1 %350, label %351, label %378

351:                                              ; preds = %348
  %352 = load i32, i32* @ENV_MSG_DONE, align 4
  %353 = call i8* @getenv(i32 %352)
  store i8* %353, i8** @done, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = load i8*, i8** @done, align 8
  %357 = call i32 @strlen(i8* %356)
  store i32 %357, i32* @done_size, align 4
  br label %377

358:                                              ; preds = %351
  %359 = load i8*, i8** @DPV_DONE_DEFAULT, align 8
  %360 = call i32 @strlen(i8* %359)
  store i32 %360, i32* @done_size, align 4
  %361 = load i32, i32* @done_size, align 4
  %362 = add nsw i32 %361, 1
  %363 = call i8* @malloc(i32 %362)
  store i8* %363, i8** @done, align 8
  %364 = icmp eq i8* %363, null
  br i1 %364, label %365, label %368

365:                                              ; preds = %358
  %366 = load i32, i32* @EXIT_FAILURE, align 4
  %367 = call i32 @errx(i32 %366, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %358
  %369 = load i32, i32* @FM_DONE, align 4
  %370 = load i32, i32* @dprompt_free_mask, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* @dprompt_free_mask, align 4
  %372 = load i8*, i8** @done, align 8
  %373 = load i32, i32* @done_size, align 4
  %374 = add nsw i32 %373, 1
  %375 = load i8*, i8** @DPV_DONE_DEFAULT, align 8
  %376 = call i32 @snprintf(i8* %372, i32 %374, i8* %375)
  br label %377

377:                                              ; preds = %368, %355
  br label %378

378:                                              ; preds = %377, %348, %345
  %379 = load i32, i32* @pbar_size, align 4
  %380 = load i32, i32* @done_size, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %378
  store i32 0, i32* @done_rsize, align 4
  store i32 0, i32* @done_lsize, align 4
  %383 = load i8*, i8** @done, align 8
  %384 = load i32, i32* @pbar_size, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  store i8 0, i8* %386, align 1
  %387 = load i32, i32* @pbar_size, align 4
  store i32 %387, i32* @done_size, align 4
  br label %405

388:                                              ; preds = %378
  %389 = load i32, i32* @pbar_size, align 4
  %390 = load i32, i32* @done_size, align 4
  %391 = sub nsw i32 %389, %390
  %392 = sdiv i32 %391, 2
  store i32 %392, i32* @done_lsize, align 4
  %393 = load i32, i32* @done_lsize, align 4
  store i32 %393, i32* @done_rsize, align 4
  %394 = load i32, i32* @done_rsize, align 4
  %395 = load i32, i32* @done_size, align 4
  %396 = add nsw i32 %394, %395
  %397 = load i32, i32* @done_lsize, align 4
  %398 = add nsw i32 %396, %397
  %399 = load i32, i32* @pbar_size, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %388
  %402 = load i32, i32* @done_rsize, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* @done_rsize, align 4
  br label %404

404:                                              ; preds = %401, %388
  br label %405

405:                                              ; preds = %404, %382
  %406 = load i8*, i8** @fail, align 8
  %407 = icmp eq i8* %406, null
  br i1 %407, label %408, label %438

408:                                              ; preds = %405
  %409 = load i8*, i8** @msg_fail, align 8
  store i8* %409, i8** @fail, align 8
  %410 = icmp eq i8* %409, null
  br i1 %410, label %411, label %438

411:                                              ; preds = %408
  %412 = load i32, i32* @ENV_MSG_FAIL, align 4
  %413 = call i8* @getenv(i32 %412)
  store i8* %413, i8** @fail, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = load i8*, i8** @fail, align 8
  %417 = call i32 @strlen(i8* %416)
  store i32 %417, i32* @fail_size, align 4
  br label %437

418:                                              ; preds = %411
  %419 = load i8*, i8** @DPV_FAIL_DEFAULT, align 8
  %420 = call i32 @strlen(i8* %419)
  store i32 %420, i32* @fail_size, align 4
  %421 = load i32, i32* @fail_size, align 4
  %422 = add nsw i32 %421, 1
  %423 = call i8* @malloc(i32 %422)
  store i8* %423, i8** @fail, align 8
  %424 = icmp eq i8* %423, null
  br i1 %424, label %425, label %428

425:                                              ; preds = %418
  %426 = load i32, i32* @EXIT_FAILURE, align 4
  %427 = call i32 @errx(i32 %426, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %428

428:                                              ; preds = %425, %418
  %429 = load i32, i32* @FM_FAIL, align 4
  %430 = load i32, i32* @dprompt_free_mask, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* @dprompt_free_mask, align 4
  %432 = load i8*, i8** @fail, align 8
  %433 = load i32, i32* @fail_size, align 4
  %434 = add nsw i32 %433, 1
  %435 = load i8*, i8** @DPV_FAIL_DEFAULT, align 8
  %436 = call i32 @snprintf(i8* %432, i32 %434, i8* %435)
  br label %437

437:                                              ; preds = %428, %415
  br label %438

438:                                              ; preds = %437, %408, %405
  %439 = load i32, i32* @pbar_size, align 4
  %440 = load i32, i32* @fail_size, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %448

442:                                              ; preds = %438
  store i32 0, i32* @fail_rsize, align 4
  store i32 0, i32* @fail_lsize, align 4
  %443 = load i8*, i8** @fail, align 8
  %444 = load i32, i32* @pbar_size, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %443, i64 %445
  store i8 0, i8* %446, align 1
  %447 = load i32, i32* @pbar_size, align 4
  store i32 %447, i32* @fail_size, align 4
  br label %465

448:                                              ; preds = %438
  %449 = load i32, i32* @pbar_size, align 4
  %450 = load i32, i32* @fail_size, align 4
  %451 = sub nsw i32 %449, %450
  %452 = sdiv i32 %451, 2
  store i32 %452, i32* @fail_lsize, align 4
  %453 = load i32, i32* @fail_lsize, align 4
  store i32 %453, i32* @fail_rsize, align 4
  %454 = load i32, i32* @fail_rsize, align 4
  %455 = load i32, i32* @fail_size, align 4
  %456 = add nsw i32 %454, %455
  %457 = load i32, i32* @fail_lsize, align 4
  %458 = add nsw i32 %456, %457
  %459 = load i32, i32* @pbar_size, align 4
  %460 = icmp ne i32 %458, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %448
  %462 = load i32, i32* @fail_rsize, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* @fail_rsize, align 4
  br label %464

464:                                              ; preds = %461, %448
  br label %465

465:                                              ; preds = %464, %442
  %466 = load i8*, i8** @pend, align 8
  %467 = icmp eq i8* %466, null
  br i1 %467, label %468, label %498

468:                                              ; preds = %465
  %469 = load i8*, i8** @msg_pending, align 8
  store i8* %469, i8** @pend, align 8
  %470 = icmp eq i8* %469, null
  br i1 %470, label %471, label %498

471:                                              ; preds = %468
  %472 = load i32, i32* @ENV_MSG_PENDING, align 4
  %473 = call i8* @getenv(i32 %472)
  store i8* %473, i8** @pend, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load i8*, i8** @pend, align 8
  %477 = call i32 @strlen(i8* %476)
  store i32 %477, i32* @pend_size, align 4
  br label %497

478:                                              ; preds = %471
  %479 = load i8*, i8** @DPV_PENDING_DEFAULT, align 8
  %480 = call i32 @strlen(i8* %479)
  store i32 %480, i32* @pend_size, align 4
  %481 = load i32, i32* @pend_size, align 4
  %482 = add nsw i32 %481, 1
  %483 = call i8* @malloc(i32 %482)
  store i8* %483, i8** @pend, align 8
  %484 = icmp eq i8* %483, null
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = load i32, i32* @EXIT_FAILURE, align 4
  %487 = call i32 @errx(i32 %486, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %488

488:                                              ; preds = %485, %478
  %489 = load i32, i32* @FM_PEND, align 4
  %490 = load i32, i32* @dprompt_free_mask, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* @dprompt_free_mask, align 4
  %492 = load i8*, i8** @pend, align 8
  %493 = load i32, i32* @pend_size, align 4
  %494 = add nsw i32 %493, 1
  %495 = load i8*, i8** @DPV_PENDING_DEFAULT, align 8
  %496 = call i32 @snprintf(i8* %492, i32 %494, i8* %495)
  br label %497

497:                                              ; preds = %488, %475
  br label %498

498:                                              ; preds = %497, %468, %465
  %499 = load i32, i32* @pbar_size, align 4
  %500 = load i32, i32* @pend_size, align 4
  %501 = icmp slt i32 %499, %500
  br i1 %501, label %502, label %508

502:                                              ; preds = %498
  store i32 0, i32* @pend_rsize, align 4
  store i32 0, i32* @pend_lsize, align 4
  %503 = load i8*, i8** @pend, align 8
  %504 = load i32, i32* @pbar_size, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  store i8 0, i8* %506, align 1
  %507 = load i32, i32* @pbar_size, align 4
  store i32 %507, i32* @pend_size, align 4
  br label %525

508:                                              ; preds = %498
  %509 = load i32, i32* @pbar_size, align 4
  %510 = load i32, i32* @pend_size, align 4
  %511 = sub nsw i32 %509, %510
  %512 = sdiv i32 %511, 2
  store i32 %512, i32* @pend_lsize, align 4
  %513 = load i32, i32* @pend_lsize, align 4
  store i32 %513, i32* @pend_rsize, align 4
  %514 = load i32, i32* @pend_rsize, align 4
  %515 = load i32, i32* @pend_lsize, align 4
  %516 = add nsw i32 %514, %515
  %517 = load i32, i32* @pend_size, align 4
  %518 = add nsw i32 %516, %517
  %519 = load i32, i32* @pbar_size, align 4
  %520 = icmp ne i32 %518, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %508
  %522 = load i32, i32* @pend_rsize, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* @pend_rsize, align 4
  br label %524

524:                                              ; preds = %521, %508
  br label %525

525:                                              ; preds = %524, %502
  %526 = load i64, i64* @debug, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %525
  %529 = load i32, i32* @label_size, align 4
  %530 = load i32, i32* @pbar_size, align 4
  %531 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %529, i32 %530)
  br label %532

532:                                              ; preds = %528, %525
  %533 = call i32 (...) @dprompt_clear()
  ret void
}

declare dso_local i32 @init_dialog(i32, i32) #1

declare dso_local i32 @dlg_put_backtitle(...) #1

declare dso_local i32 @dialog_maxrows(...) #1

declare dso_local i32 @dialog_prompt_numlines(i8*, i64) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i64 @dialog_prompt_nlstate(i8*) #1

declare dso_local i64 @dialog_prompt_longestline(i8*, i32) #1

declare dso_local i32 @dialog_maxcols(...) #1

declare dso_local i64 @dialog_prompt_wrappedlines(i8*, i32, i32) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @dprompt_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
