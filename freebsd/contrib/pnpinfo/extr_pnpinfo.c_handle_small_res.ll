; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_handle_small_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_handle_small_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"*** ITEM 0x%04x len %d detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"*** ITEM 0x%02x detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"PnP Version %d.%d, Vendor Version %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\0ALogical Device ID: %c%c%c%02x%02x 0x%08x #%d\0A\00", align 1
@logdevs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"\09Device powers up active\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\09Device supports I/O Range Check\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\09Reserved register funcs %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\09Vendor register funcs %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Compatible Device ID: %c%c%c%02x%02x (%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"    IRQ: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"IRQ: High true edge sensitive\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"IRQ: Low true edge sensitive\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"IRQ: High true level sensitive\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"IRQ: Low true level sensitive\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c" - only one type (true/edge)\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"    DMA: channel(s) \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"TAG Start DF\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Good Configuration\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Acceptable Configuration\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Sub-optimal Configuration\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"TAG End DF\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"    I/O Range 0x%x .. 0x%x, alignment 0x%x, len 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\09[16-bit addr]\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"\09[not 16-bit addr]\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"    FIXED I/O base address 0x%x length 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"*** Small Vendor Tag Detected\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"End Tag\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_small_res(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = call i32 @DEB(i32 %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %14 [
    i32 128, label %17
    i32 132, label %30
    i32 139, label %99
    i32 133, label %132
    i32 138, label %211
    i32 130, label %237
    i32 136, label %253
    i32 134, label %255
    i32 135, label %288
    i32 129, label %302
    i32 137, label %304
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %306

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %25, i32 %28)
  br label %306

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 124
  %35 = ashr i32 %34, 2
  %36 = add nsw i32 %35, 64
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 3
  %41 = shl i32 %40, 3
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 224
  %46 = ashr i32 %45, 5
  %47 = or i32 %41, %46
  %48 = add nsw i32 %47, 64
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 31
  %53 = add nsw i32 %52, 64
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @logdevs, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @logdevs, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %48, i32 %53, i32 %56, i32 %59, i32 %61, i32 %62)
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %30
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %30
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 3
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %306

99:                                               ; preds = %3
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 124
  %104 = ashr i32 %103, 2
  %105 = add nsw i32 %104, 64
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 3
  %110 = shl i32 %109, 3
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 224
  %115 = ashr i32 %114, 5
  %116 = or i32 %110, %115
  %117 = add nsw i32 %116, 64
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 31
  %122 = add nsw i32 %121, 64
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %105, i32 %117, i32 %122, i32 %125, i32 %128, i32 %130)
  br label %306

132:                                              ; preds = %3
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %149, %132
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 8
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %145, %137
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %134

152:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %169, %152
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = shl i32 1, %160
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %153

172:                                              ; preds = %153
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %208

175:                                              ; preds = %172
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %175
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 2
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %183
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %191
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %199
  br label %210

208:                                              ; preds = %172
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %207
  br label %306

211:                                              ; preds = %3
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %228, %211
  %214 = load i32, i32* %8, align 4
  %215 = icmp slt i32 %214, 8
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %8, align 4
  %221 = shl i32 1, %220
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %216
  %225 = load i32, i32* %8, align 4
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %224, %216
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %213

231:                                              ; preds = %213
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %233 = load i32*, i32** %5, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @report_dma_info(i32 %235)
  br label %306

237:                                              ; preds = %3
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  switch i32 %244, label %251 [
    i32 0, label %245
    i32 1, label %247
    i32 2, label %249
  ]

245:                                              ; preds = %241
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %251

247:                                              ; preds = %241
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %251

249:                                              ; preds = %241
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %251

251:                                              ; preds = %241, %249, %247, %245
  br label %252

252:                                              ; preds = %251, %237
  br label %306

253:                                              ; preds = %3
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  br label %306

255:                                              ; preds = %3
  %256 = load i32*, i32** %5, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %5, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 8
  %263 = add nsw i32 %258, %262
  %264 = load i32*, i32** %5, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %5, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 4
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 8
  %271 = add nsw i32 %266, %270
  %272 = load i32*, i32** %5, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 5
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %5, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 6
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 %263, i32 %271, i32 %274, i32 %277)
  %279 = load i32*, i32** %5, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %255
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %287

285:                                              ; preds = %255
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %283
  br label %306

288:                                              ; preds = %3
  %289 = load i32*, i32** %5, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %5, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 3
  %296 = shl i32 %295, 8
  %297 = add nsw i32 %291, %296
  %298 = load i32*, i32** %5, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  %300 = load i32, i32* %299, align 4
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 %297, i32 %300)
  br label %306

302:                                              ; preds = %3
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  br label %306

304:                                              ; preds = %3
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %307

306:                                              ; preds = %302, %288, %287, %253, %252, %231, %210, %99, %98, %17, %14
  store i32 0, i32* %4, align 4
  br label %307

307:                                              ; preds = %306, %304
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @report_dma_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
