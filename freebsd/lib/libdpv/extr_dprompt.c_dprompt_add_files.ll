; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_add_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpv_file_node = type { i64, i8*, i8*, i64, i32, %struct.dpv_file_node* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FLABEL_MAX = common dso_local global i32 0, align 4
@pbar_size = common dso_local global i32 0, align 4
@use_colors = common dso_local global i64 0, align 8
@use_shadow = common dso_local global i64 0, align 8
@gauge_color = common dso_local global i8* null, align 8
@dialog_test = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%*s%3u%%%*s\00", align 1
@pct_lsize = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pct_rsize = common dso_local global i32 0, align 4
@use_color = common dso_local global i64 0, align 8
@dwidth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"\\Z%c\\Zr\\Z%c%s%s%s\\Zn\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\\ZR\00", align 1
@label_size = common dso_local global i32 0, align 4
@use_dialog = common dso_local global i64 0, align 8
@pprompt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@use_libdialog = common dso_local global i64 0, align 8
@no_labels = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s%-*s%s %c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\\Zb\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\\Zn\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%-*s%s %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@DPV_STATUS_RUNNING = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c" [\\Z%c%s%-*s%s%-*s\\Zn]\\n\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c" [%-*s%s%-*s]\\n\00", align 1
@DPV_STATUS_FAILED = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"\\Zr\\Z1\00", align 1
@fail_lsize = common dso_local global i32 0, align 4
@fail_rsize = common dso_local global i32 0, align 4
@fail = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"\\Zr\\Z2\00", align 1
@done_lsize = common dso_local global i32 0, align 4
@done_rsize = common dso_local global i32 0, align 4
@done = common dso_local global i8* null, align 8
@pend_lsize = common dso_local global i32 0, align 4
@pend = common dso_local global i32 0, align 4
@pend_rsize = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c" [%s]\\n\00", align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DIVISOR_1000 = common dso_local global i32 0, align 4
@msg = common dso_local global i8* null, align 8
@PROMPT_MAX = common dso_local global i32 0, align 4
@mesg_size = common dso_local global i32 0, align 4
@mesg_rsize = common dso_local global i32 0, align 4
@mesg_lsize = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c" \\n\00", align 1
@display_limit = common dso_local global i32 0, align 4
@fheight = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpv_file_node*, %struct.dpv_file_node*, i32)* @dprompt_add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dprompt_add_files(%struct.dpv_file_node* %0, %struct.dpv_file_node* %1, i32 %2) #0 {
  %4 = alloca %struct.dpv_file_node*, align 8
  %5 = alloca %struct.dpv_file_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.dpv_file_node*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca [32 x i8], align 16
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store %struct.dpv_file_node* %0, %struct.dpv_file_node** %4, align 8
  store %struct.dpv_file_node* %1, %struct.dpv_file_node** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8 98, i8* %8, align 1
  store i8 52, i8* %9, align 1
  %35 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %36 = icmp ne %struct.dpv_file_node* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i64, i64* @FALSE, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load i64, i64* @TRUE, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  store i64 %42, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %43 = load i32, i32* @FLABEL_MAX, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %29, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %30, align 8
  %48 = load i32, i32* @pbar_size, align 4
  %49 = add nsw i32 %48, 16
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %32, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %33, align 8
  %53 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %34, align 8
  %54 = load i64, i64* @use_colors, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i64, i64* @use_shadow, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %41
  %60 = load i8*, i8** @gauge_color, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %9, align 1
  %63 = load i8*, i8** @gauge_color, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %8, align 1
  br label %66

66:                                               ; preds = %59, %56
  store i8 0, i8* %51, align 16
  %67 = load i32, i32* @pbar_size, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %69
  %73 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %74 = icmp ne %struct.dpv_file_node* %73, null
  br i1 %74, label %75, label %123

75:                                               ; preds = %72
  %76 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %77 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* @dialog_test, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %80, %75
  %84 = load i32, i32* @pbar_size, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i8*, i8** @pct_lsize, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @pct_rsize, align 4
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i64, i64* @use_color, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %83
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @pbar_size, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 100
  store i32 %96, i32* %26, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @pbar_size, align 4
  %99 = mul nsw i32 %97, %98
  %100 = srem i32 %99, 100
  %101 = icmp sgt i32 %100, 50
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* %26, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %26, align 4
  br label %105

105:                                              ; preds = %102, %92
  store i8 0, i8* %53, align 16
  store i8 0, i8* %52, align 16
  %106 = load i32, i32* @dwidth, align 4
  %107 = call i32 @strncat(i8* %53, i8* %51, i32 %106)
  %108 = load i32, i32* %26, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %53, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* %26, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %51, i64 %112
  %114 = load i32, i32* @dwidth, align 4
  %115 = call i32 @strncat(i8* %52, i8* %113, i32 %114)
  %116 = trunc i64 %50 to i32
  %117 = load i8, i8* %8, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* %9, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %120, i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %122

122:                                              ; preds = %105, %83
  br label %123

123:                                              ; preds = %122, %80, %72, %69, %66
  %124 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  store %struct.dpv_file_node* %124, %struct.dpv_file_node** %28, align 8
  br label %125

125:                                              ; preds = %558, %123
  %126 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %127 = icmp ne %struct.dpv_file_node* %126, null
  br i1 %127, label %128, label %562

128:                                              ; preds = %125
  %129 = load i32, i32* @label_size, align 4
  store i32 %129, i32* %21, align 4
  %130 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %131 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %14, align 8
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %25, align 4
  %135 = load i64, i64* @use_dialog, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* @pprompt, align 4
  %139 = call i64 @dialog_prompt_nlstate(i32 %138)
  store i64 %139, i64* %11, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load i8*, i8** %14, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i64 @dialog_prompt_numlines(i8* %141, i64 %142)
  %144 = load i32, i32* %24, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %24, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = call i8* @dialog_prompt_lastline(i8* %148, i32 1)
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = icmp ne i8* %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %140
  %154 = load i8*, i8** %13, align 8
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %7, align 1
  %156 = load i8*, i8** %13, align 8
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  %159 = load i8, i8* %7, align 1
  %160 = load i8*, i8** %13, align 8
  store i8 %159, i8* %160, align 1
  %161 = load i8*, i8** %13, align 8
  store i8* %161, i8** %14, align 8
  br label %162

162:                                              ; preds = %153, %140
  %163 = load i64, i64* @use_dialog, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* @use_libdialog, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %216

168:                                              ; preds = %165, %162
  %169 = load i64, i64* @use_color, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %216

171:                                              ; preds = %168
  %172 = load i8*, i8** %14, align 8
  store i8* %172, i8** %12, align 8
  br label %173

173:                                              ; preds = %206, %171
  %174 = load i8*, i8** %12, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %209

178:                                              ; preds = %173
  %179 = load i8*, i8** %12, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 92
  br i1 %182, label %183, label %206

183:                                              ; preds = %178
  %184 = load i8*, i8** %12, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %183
  %190 = load i8*, i8** %12, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %12, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 90
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load i8*, i8** %12, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load i8*, i8** %12, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %12, align 8
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %204, 3
  store i32 %205, i32* %21, align 4
  br label %206

206:                                              ; preds = %201, %195, %189, %183, %178
  %207 = load i8*, i8** %12, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %12, align 8
  br label %173

209:                                              ; preds = %173
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* @FLABEL_MAX, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i32, i32* @FLABEL_MAX, align 4
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %213, %209
  br label %216

216:                                              ; preds = %215, %168, %165
  %217 = load i32, i32* @pbar_size, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* @FLABEL_MAX, align 4
  %222 = sub nsw i32 %221, 2
  %223 = icmp sle i32 %220, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load i64, i64* @no_labels, align 8
  %226 = load i64, i64* @FALSE, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i32, i32* %21, align 4
  %230 = add nsw i32 %229, 2
  store i32 %230, i32* %21, align 4
  br label %231

231:                                              ; preds = %228, %224, %219, %216
  %232 = load i32, i32* %21, align 4
  %233 = add nsw i32 %232, 1
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %234)
  %236 = load i32, i32* %21, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load i32, i32* %21, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %47, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 -3
  %243 = call i32 @sprintf(i8* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %244

244:                                              ; preds = %238, %231
  %245 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %246 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %247 = icmp eq %struct.dpv_file_node* %245, %246
  br i1 %247, label %248, label %284

248:                                              ; preds = %244
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %249, 100
  br i1 %250, label %251, label %284

251:                                              ; preds = %248
  %252 = call i32 @strlen(i8* %47)
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %47, i64 %253
  store i8* %254, i8** %12, align 8
  %255 = load i8*, i8** %12, align 8
  %256 = load i32, i32* %21, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %47, i64 %257
  %259 = icmp ult i8* %255, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %251
  %261 = load i8*, i8** %12, align 8
  %262 = load i32, i32* %21, align 4
  %263 = sext i32 %262 to i64
  %264 = load i8*, i8** %12, align 8
  %265 = ptrtoint i8* %264 to i64
  %266 = ptrtoint i8* %47 to i64
  %267 = sub i64 %265, %266
  %268 = sub nsw i64 %263, %267
  %269 = add nsw i64 %268, 1
  %270 = trunc i64 %269 to i32
  %271 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %261, i32 %270, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %272

272:                                              ; preds = %260, %251
  %273 = load i64, i64* @use_color, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %277 = load i32, i32* %21, align 4
  %278 = load i64, i64* @use_color, align 8
  %279 = icmp ne i64 %278, 0
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %282 = call i32 (...) @spin_char()
  %283 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %276, i32 %277, i8* %47, i8* %281, i32 %282)
  br label %291

284:                                              ; preds = %248, %244
  %285 = load i32, i32* %21, align 4
  %286 = load i64, i64* @use_color, align 8
  %287 = icmp ne i64 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %290 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %285, i8* %47, i8* %289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %291

291:                                              ; preds = %284, %272
  store i32 130, i32* %18, align 4
  %292 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %293 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %292, i32 0, i32 2
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  store i32 134, i32* %18, align 4
  br label %380

297:                                              ; preds = %291
  %298 = load i32, i32* @pbar_size, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 130, i32* %18, align 4
  br label %379

301:                                              ; preds = %297
  %302 = load i32, i32* @pbar_size, align 4
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store i32 131, i32* %18, align 4
  br label %378

305:                                              ; preds = %301
  %306 = load i64, i64* %10, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 128, i32* %18, align 4
  br label %377

309:                                              ; preds = %305
  %310 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %311 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %312 = icmp eq %struct.dpv_file_node* %310, %311
  br i1 %312, label %313, label %364

313:                                              ; preds = %309
  %314 = load i8, i8* %51, align 16
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %313
  %318 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %319 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp slt i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  store i32 133, i32* %18, align 4
  br label %332

323:                                              ; preds = %317
  %324 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %325 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @DPV_STATUS_RUNNING, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  store i32 133, i32* %18, align 4
  br label %331

330:                                              ; preds = %323
  store i32 132, i32* %18, align 4
  br label %331

331:                                              ; preds = %330, %329
  br label %332

332:                                              ; preds = %331, %322
  br label %363

333:                                              ; preds = %313
  %334 = load i64, i64* @dialog_test, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load i32, i32* %6, align 4
  %338 = icmp slt i32 %337, 100
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i32 129, i32 132
  store i32 %340, i32* %18, align 4
  br label %362

341:                                              ; preds = %333
  %342 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %343 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @DPV_STATUS_RUNNING, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %349 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp slt i64 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i32 133, i32 129
  store i32 %353, i32* %18, align 4
  br label %361

354:                                              ; preds = %341
  %355 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %356 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp slt i64 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 133, i32 132
  store i32 %360, i32* %18, align 4
  br label %361

361:                                              ; preds = %354, %347
  br label %362

362:                                              ; preds = %361, %336
  br label %363

363:                                              ; preds = %362, %332
  br label %376

364:                                              ; preds = %309
  %365 = load i64, i64* @dialog_test, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store i32 132, i32* %18, align 4
  br label %375

368:                                              ; preds = %364
  %369 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %370 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp slt i64 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 133, i32 132
  store i32 %374, i32* %18, align 4
  br label %375

375:                                              ; preds = %368, %367
  br label %376

376:                                              ; preds = %375, %363
  br label %377

377:                                              ; preds = %376, %308
  br label %378

378:                                              ; preds = %377, %304
  br label %379

379:                                              ; preds = %378, %300
  br label %380

380:                                              ; preds = %379, %296
  %381 = load i64, i64* @use_color, align 8
  %382 = icmp ne i64 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)
  store i8* %384, i8** %17, align 8
  %385 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %386 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @DPV_STATUS_FAILED, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %380
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %15, align 8
  %391 = load i32, i32* @fail_lsize, align 4
  store i32 %391, i32* %19, align 4
  %392 = load i32, i32* @fail_rsize, align 4
  store i32 %392, i32* %20, align 4
  %393 = load i8*, i8** @fail, align 8
  store i8* %393, i8** %16, align 8
  br label %398

394:                                              ; preds = %380
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %15, align 8
  %395 = load i32, i32* @done_lsize, align 4
  store i32 %395, i32* %19, align 4
  %396 = load i32, i32* @done_rsize, align 4
  store i32 %396, i32* %20, align 4
  %397 = load i8*, i8** @done, align 8
  store i8* %397, i8** %16, align 8
  br label %398

398:                                              ; preds = %394, %390
  %399 = load i32, i32* %18, align 4
  switch i32 %399, label %544 [
    i32 128, label %400
    i32 129, label %405
    i32 132, label %407
    i32 133, label %426
    i32 134, label %474
    i32 131, label %528
    i32 130, label %543
  ]

400:                                              ; preds = %398
  %401 = load i32, i32* @pend_lsize, align 4
  %402 = load i32, i32* @pend, align 4
  %403 = load i32, i32* @pend_rsize, align 4
  %404 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %401, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %402, i32 %403, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %546

405:                                              ; preds = %398
  %406 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %51)
  br label %546

407:                                              ; preds = %398
  %408 = load i64, i64* @use_color, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %419

410:                                              ; preds = %407
  %411 = load i8*, i8** %17, align 8
  %412 = load i8, i8* %8, align 1
  %413 = sext i8 %412 to i32
  %414 = load i8*, i8** %15, align 8
  %415 = load i32, i32* %19, align 4
  %416 = load i8*, i8** %16, align 8
  %417 = load i32, i32* %20, align 4
  %418 = call i32 (i8*, ...) @dprompt_add(i8* %411, i32 %413, i8* %414, i32 %415, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %416, i32 %417, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %425

419:                                              ; preds = %407
  %420 = load i8*, i8** %17, align 8
  %421 = load i32, i32* %19, align 4
  %422 = load i8*, i8** %16, align 8
  %423 = load i32, i32* %20, align 4
  %424 = call i32 (i8*, ...) @dprompt_add(i8* %420, i32 %421, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %422, i32 %423, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %425

425:                                              ; preds = %419, %410
  br label %546

426:                                              ; preds = %398
  %427 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %428 = load i32, i32* @pbar_size, align 4
  %429 = add nsw i32 %428, 2
  %430 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %431 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @HN_AUTOSCALE, align 4
  %434 = load i32, i32* @HN_NOSPACE, align 4
  %435 = load i32, i32* @HN_DIVISOR_1000, align 4
  %436 = or i32 %434, %435
  %437 = call i32 @humanize_number(i8* %427, i32 %429, i32 %432, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %433, i32 %436)
  %438 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %439 = call i32 @strlen(i8* %438)
  store i32 %439, i32* %22, align 4
  %440 = load i32, i32* @pbar_size, align 4
  %441 = load i32, i32* %22, align 4
  %442 = sub nsw i32 %440, %441
  %443 = sdiv i32 %442, 2
  store i32 %443, i32* %23, align 4
  %444 = load i32, i32* %23, align 4
  store i32 %444, i32* %27, align 4
  %445 = load i32, i32* %23, align 4
  %446 = load i32, i32* %22, align 4
  %447 = add nsw i32 %445, %446
  %448 = load i32, i32* %27, align 4
  %449 = add nsw i32 %447, %448
  %450 = load i32, i32* @pbar_size, align 4
  %451 = icmp ne i32 %449, %450
  br i1 %451, label %452, label %455

452:                                              ; preds = %426
  %453 = load i32, i32* %27, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %27, align 4
  br label %455

455:                                              ; preds = %452, %426
  %456 = load i64, i64* @use_color, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %467

458:                                              ; preds = %455
  %459 = load i8*, i8** %17, align 8
  %460 = load i8, i8* %8, align 1
  %461 = sext i8 %460 to i32
  %462 = load i8*, i8** %15, align 8
  %463 = load i32, i32* %23, align 4
  %464 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %465 = load i32, i32* %27, align 4
  %466 = call i32 (i8*, ...) @dprompt_add(i8* %459, i32 %461, i8* %462, i32 %463, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %464, i32 %465, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %473

467:                                              ; preds = %455
  %468 = load i8*, i8** %17, align 8
  %469 = load i32, i32* %23, align 4
  %470 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %471 = load i32, i32* %27, align 4
  %472 = call i32 (i8*, ...) @dprompt_add(i8* %468, i32 %469, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %470, i32 %471, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %473

473:                                              ; preds = %467, %458
  br label %546

474:                                              ; preds = %398
  %475 = load i8*, i8** @msg, align 8
  %476 = load i32, i32* @PROMPT_MAX, align 4
  %477 = add nsw i32 %476, 1
  %478 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %479 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %478, i32 0, i32 2
  %480 = load i8*, i8** %479, align 8
  %481 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %475, i32 %477, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %480)
  %482 = load i32, i32* @pbar_size, align 4
  %483 = load i8*, i8** @msg, align 8
  %484 = call i32 @strlen(i8* %483)
  store i32 %484, i32* @mesg_size, align 4
  %485 = icmp slt i32 %482, %484
  br i1 %485, label %486, label %492

486:                                              ; preds = %474
  store i32 0, i32* @mesg_rsize, align 4
  store i32 0, i32* @mesg_lsize, align 4
  %487 = load i8*, i8** @msg, align 8
  %488 = load i32, i32* @pbar_size, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  store i8 0, i8* %490, align 1
  %491 = load i32, i32* @pbar_size, align 4
  store i32 %491, i32* @mesg_size, align 4
  br label %509

492:                                              ; preds = %474
  %493 = load i32, i32* @pbar_size, align 4
  %494 = load i32, i32* @mesg_size, align 4
  %495 = sub nsw i32 %493, %494
  %496 = sdiv i32 %495, 2
  store i32 %496, i32* @mesg_lsize, align 4
  %497 = load i32, i32* @mesg_lsize, align 4
  store i32 %497, i32* @mesg_rsize, align 4
  %498 = load i32, i32* @mesg_rsize, align 4
  %499 = load i32, i32* @mesg_size, align 4
  %500 = add nsw i32 %498, %499
  %501 = load i32, i32* @mesg_lsize, align 4
  %502 = add nsw i32 %500, %501
  %503 = load i32, i32* @pbar_size, align 4
  %504 = icmp ne i32 %502, %503
  br i1 %504, label %505, label %508

505:                                              ; preds = %492
  %506 = load i32, i32* @mesg_rsize, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* @mesg_rsize, align 4
  br label %508

508:                                              ; preds = %505, %492
  br label %509

509:                                              ; preds = %508, %486
  %510 = load i64, i64* @use_color, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %509
  %513 = load i8*, i8** %17, align 8
  %514 = load i8, i8* %8, align 1
  %515 = sext i8 %514 to i32
  %516 = load i8*, i8** %15, align 8
  %517 = load i32, i32* @mesg_lsize, align 4
  %518 = load i8*, i8** @msg, align 8
  %519 = load i32, i32* @mesg_rsize, align 4
  %520 = call i32 (i8*, ...) @dprompt_add(i8* %513, i32 %515, i8* %516, i32 %517, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %518, i32 %519, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %527

521:                                              ; preds = %509
  %522 = load i8*, i8** %17, align 8
  %523 = load i32, i32* @mesg_lsize, align 4
  %524 = load i8*, i8** @msg, align 8
  %525 = load i32, i32* @mesg_rsize, align 4
  %526 = call i32 (i8*, ...) @dprompt_add(i8* %522, i32 %523, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %524, i32 %525, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %527

527:                                              ; preds = %521, %512
  br label %546

528:                                              ; preds = %398
  %529 = load i64, i64* @use_color, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %538

531:                                              ; preds = %528
  %532 = load i8*, i8** %17, align 8
  %533 = load i8, i8* %8, align 1
  %534 = sext i8 %533 to i32
  %535 = load i8*, i8** %15, align 8
  %536 = load i32, i32* @pbar_size, align 4
  %537 = call i32 (i8*, ...) @dprompt_add(i8* %532, i32 %534, i8* %535, i32 %536, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %542

538:                                              ; preds = %528
  %539 = load i8*, i8** %17, align 8
  %540 = load i32, i32* @pbar_size, align 4
  %541 = call i32 (i8*, ...) @dprompt_add(i8* %539, i32 %540, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %542

542:                                              ; preds = %538, %531
  br label %546

543:                                              ; preds = %398
  br label %544

544:                                              ; preds = %398, %543
  %545 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %546

546:                                              ; preds = %544, %542, %527, %473, %425, %405, %400
  %547 = load i32, i32* %25, align 4
  %548 = load i32, i32* @display_limit, align 4
  %549 = icmp sge i32 %547, %548
  br i1 %549, label %550, label %551

550:                                              ; preds = %546
  br label %562

551:                                              ; preds = %546
  %552 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %553 = load %struct.dpv_file_node*, %struct.dpv_file_node** %5, align 8
  %554 = icmp eq %struct.dpv_file_node* %552, %553
  br i1 %554, label %555, label %557

555:                                              ; preds = %551
  %556 = load i64, i64* @TRUE, align 8
  store i64 %556, i64* %10, align 8
  br label %557

557:                                              ; preds = %555, %551
  br label %558

558:                                              ; preds = %557
  %559 = load %struct.dpv_file_node*, %struct.dpv_file_node** %28, align 8
  %560 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %559, i32 0, i32 5
  %561 = load %struct.dpv_file_node*, %struct.dpv_file_node** %560, align 8
  store %struct.dpv_file_node* %561, %struct.dpv_file_node** %28, align 8
  br label %125

562:                                              ; preds = %550, %125
  br label %563

563:                                              ; preds = %567, %562
  %564 = load i32, i32* %24, align 4
  %565 = load i32, i32* @fheight, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %571

567:                                              ; preds = %563
  %568 = call i32 (i8*, ...) @dprompt_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %569 = load i32, i32* %24, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %24, align 4
  br label %563

571:                                              ; preds = %563
  %572 = load i32, i32* %25, align 4
  %573 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %573)
  ret i32 %572
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i64 @dialog_prompt_nlstate(i32) #2

declare dso_local i64 @dialog_prompt_numlines(i8*, i64) #2

declare dso_local i8* @dialog_prompt_lastline(i8*, i32) #2

declare dso_local i32 @dprompt_add(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @spin_char(...) #2

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
