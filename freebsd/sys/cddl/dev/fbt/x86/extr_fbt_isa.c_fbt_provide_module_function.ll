; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/x86/extr_fbt_isa.c_fbt_provide_module_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/x86/extr_fbt_isa.c_fbt_provide_module_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64*, i32, i64, %struct.TYPE_11__*, i8*, i64, i32, i32, %struct.TYPE_10__*, i8*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"trap_check\00", align 1
@FBT_PUSHL_EBP = common dso_local global i64 0, align 8
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@DTRACE_INVOP_PUSHL_EBP = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i8* null, align 8
@fbt_probetab = common dso_local global %struct.TYPE_11__** null, align 8
@FBT_RET = common dso_local global i64 0, align 8
@FBT_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_RET = common dso_local global i32 0, align 4
@DTRACE_INVOP_LEAVE = common dso_local global i32 0, align 4
@DTRACE_INVOP_POPL_EBP = common dso_local global i32 0, align 4
@FBT_LEAVE = common dso_local global i64 0, align 8
@FBT_MOVL_ESP_EBP0_V0 = common dso_local global i64 0, align 8
@FBT_MOVL_ESP_EBP0_V1 = common dso_local global i64 0, align 8
@FBT_MOVL_ESP_EBP1_V0 = common dso_local global i64 0, align 8
@FBT_MOVL_ESP_EBP1_V1 = common dso_local global i64 0, align 8
@FBT_POPL_EBP = common dso_local global i64 0, align 8
@FBT_RET_IMM16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_provide_module_function(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_9__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @fbt_excluded(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %332

29:                                               ; preds = %4
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %332

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64* %41, i64** %17, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i64*
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  store i64* %50, i64** %18, align 8
  br label %51

51:                                               ; preds = %66, %34
  %52 = load i64*, i64** %17, align 8
  %53 = load i64*, i64** %18, align 8
  %54 = icmp ult i64* %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i64*, i64** %17, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FBT_PUSHL_EBP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %71

61:                                               ; preds = %55
  %62 = load i64*, i64** %17, align 8
  %63 = call i32 @dtrace_instr_size(i64* %62)
  store i32 %63, i32* %16, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = load i64*, i64** %17, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64* %70, i64** %17, align 8
  br label %51

71:                                               ; preds = %65, %60, %51
  %72 = load i64*, i64** %17, align 8
  %73 = load i64*, i64** %18, align 8
  %74 = icmp uge i64* %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i64*, i64** %17, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FBT_PUSHL_EBP, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %71
  store i32 0, i32* %5, align 4
  br label %332

81:                                               ; preds = %75
  %82 = load i32, i32* @M_FBT, align 4
  %83 = load i32, i32* @M_WAITOK, align 4
  %84 = load i32, i32* @M_ZERO, align 4
  %85 = or i32 %83, %84
  %86 = call %struct.TYPE_11__* @malloc(i32 96, i32 %82, i32 %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %12, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @fbt_id, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* @FBT_ENTRY, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = call i8* @dtrace_probe_create(i32 %90, i8* %91, i8* %92, i32 %93, i32 3, %struct.TYPE_11__* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 10
  store i8* %95, i8** %97, align 8
  %98 = load i64*, i64** %17, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i64* %98, i64** %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 9
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @DTRACE_INVOP_PUSHL_EBP, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i64*, i64** %17, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  store i64 %113, i64* %115, align 8
  %116 = load i8*, i8** @FBT_PATCHVAL, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @fbt_probetab, align 8
  %123 = load i64*, i64** %17, align 8
  %124 = call i64 @FBT_ADDR2NDX(i64* %123)
  %125 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %13, align 8
  br label %127

127:                                              ; preds = %148, %81
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %129 = icmp ne %struct.TYPE_11__* %128, null
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = icmp eq i64* %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 12
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 12
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 12
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %146, align 8
  br label %152

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %13, align 8
  br label %127

152:                                              ; preds = %138, %127
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = icmp eq %struct.TYPE_11__* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @fbt_probetab, align 8
  %157 = load i64*, i64** %17, align 8
  %158 = call i64 @FBT_ADDR2NDX(i64* %157)
  %159 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %156, i64 %158
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %164 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @fbt_probetab, align 8
  %165 = load i64*, i64** %17, align 8
  %166 = call i64 @FBT_ADDR2NDX(i64* %165)
  %167 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %164, i64 %166
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %167, align 8
  br label %168

168:                                              ; preds = %155, %152
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  br label %173

173:                                              ; preds = %269, %231, %188, %168
  %174 = load i64*, i64** %17, align 8
  %175 = load i64*, i64** %18, align 8
  %176 = icmp uge i64* %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %332

178:                                              ; preds = %173
  %179 = load i64*, i64** %17, align 8
  %180 = call i32 @dtrace_instr_size(i64* %179)
  store i32 %180, i32* %16, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %332

183:                                              ; preds = %178
  %184 = load i64*, i64** %17, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @FBT_RET, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i32, i32* %16, align 4
  %190 = load i64*, i64** %17, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64* %192, i64** %17, align 8
  br label %173

193:                                              ; preds = %183
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %237, %193
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp ult i64 %196, 8
  br i1 %197, label %198, label %240

198:                                              ; preds = %194
  %199 = load i64*, i64** %17, align 8
  %200 = ptrtoint i64* %199 to i64
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = sub nsw i64 %200, %202
  store i64 %203, i64* %19, align 8
  %204 = load i64, i64* %19, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %240

210:                                              ; preds = %198
  %211 = load i64, i64* %19, align 8
  %212 = add i64 %211, 8
  %213 = load i64*, i64** %18, align 8
  %214 = ptrtoint i64* %213 to i64
  %215 = icmp ugt i64 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %237

217:                                              ; preds = %210
  %218 = load i64, i64* %19, align 8
  %219 = inttoptr i64 %218 to i64**
  %220 = load i64*, i64** %219, align 8
  store i64* %220, i64** %20, align 8
  %221 = load i64*, i64** %20, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i64*
  %226 = icmp uge i64* %221, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %217
  %228 = load i64*, i64** %20, align 8
  %229 = load i64*, i64** %18, align 8
  %230 = icmp ult i64* %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load i32, i32* %16, align 4
  %233 = load i64*, i64** %17, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  store i64* %235, i64** %17, align 8
  br label %173

236:                                              ; preds = %227, %217
  br label %237

237:                                              ; preds = %236, %216
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  br label %194

240:                                              ; preds = %209, %194
  %241 = load i32, i32* @M_FBT, align 4
  %242 = load i32, i32* @M_WAITOK, align 4
  %243 = load i32, i32* @M_ZERO, align 4
  %244 = or i32 %242, %243
  %245 = call %struct.TYPE_11__* @malloc(i32 96, i32 %241, i32 %244)
  store %struct.TYPE_11__* %245, %struct.TYPE_11__** %12, align 8
  %246 = load i8*, i8** %11, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %250 = icmp eq %struct.TYPE_11__* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %240
  %252 = load i32, i32* @fbt_id, align 4
  %253 = load i8*, i8** %10, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = load i32, i32* @FBT_RETURN, align 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %257 = call i8* @dtrace_probe_create(i32 %252, i8* %253, i8* %254, i32 %255, i32 3, %struct.TYPE_11__* %256)
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 10
  store i8* %257, i8** %259, align 8
  br label %269

260:                                              ; preds = %240
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 11
  store %struct.TYPE_11__* %261, %struct.TYPE_11__** %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 10
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 10
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %260, %251
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %270, %struct.TYPE_11__** %14, align 8
  %271 = load i64*, i64** %17, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  store i64* %271, i64** %273, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 9
  store %struct.TYPE_10__* %274, %struct.TYPE_10__** %276, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 8
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load i64*, i64** %17, align 8
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @FBT_RET, align 8
  %288 = icmp eq i64 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @ASSERT(i32 %289)
  %291 = load i32, i32* @DTRACE_INVOP_RET, align 4
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 8
  %294 = load i64*, i64** %17, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i64*
  %299 = ptrtoint i64* %294 to i64
  %300 = ptrtoint i64* %298 to i64
  %301 = sub i64 %299, %300
  %302 = sdiv exact i64 %301, 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  store i64 %302, i64* %304, align 8
  %305 = load i64*, i64** %17, align 8
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 6
  store i64 %306, i64* %308, align 8
  %309 = load i8*, i8** @FBT_PATCHVAL, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 5
  store i8* %309, i8** %311, align 8
  %312 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @fbt_probetab, align 8
  %313 = load i64*, i64** %17, align 8
  %314 = call i64 @FBT_ADDR2NDX(i64* %313)
  %315 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %312, i64 %314
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 4
  store %struct.TYPE_11__* %316, %struct.TYPE_11__** %318, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %320 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @fbt_probetab, align 8
  %321 = load i64*, i64** %17, align 8
  %322 = call i64 @FBT_ADDR2NDX(i64* %321)
  %323 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %320, i64 %322
  store %struct.TYPE_11__* %319, %struct.TYPE_11__** %323, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load i32, i32* %16, align 4
  %329 = load i64*, i64** %17, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  store i64* %331, i64** %17, align 8
  br label %173

332:                                              ; preds = %182, %177, %80, %33, %28
  %333 = load i32, i32* %5, align 4
  ret i32 %333
}

declare dso_local i64 @fbt_excluded(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dtrace_instr_size(i64*) #1

declare dso_local %struct.TYPE_11__* @malloc(i32, i32, i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i64*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
