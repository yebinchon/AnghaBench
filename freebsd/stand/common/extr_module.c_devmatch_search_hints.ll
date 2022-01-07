; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_devmatch_search_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_devmatch_search_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moduledir = type { i32, i32* }

@pnp_dump_flag = common dso_local global i32 0, align 4
@pnp_verbose_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Version: if %s.%d kmod %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"module %s in %s\0A\00", align 1
@pnp_unbound_flag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"PNP info for bus %s format %s %d entries (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Treating usb as uhub -- bug in source table still?\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"uhub\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Skipped because table for bus %s, looking for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"---------- Entry %d ----------\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%#x:\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Matching %s (%c) table=%#x tomatch=%#x\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"'%s':\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Unknown field type %c\0A:\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Matches --- %s ---\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"------------------------- \00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"%s on %s pnpinfo %s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"unattached\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c" -------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.moduledir*, i8*, i8*, i8*)* @devmatch_search_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @devmatch_search_hints(%struct.moduledir* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.moduledir*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.moduledir* %0, %struct.moduledir** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %24, align 8
  %27 = load %struct.moduledir*, %struct.moduledir** %6, align 8
  %28 = call i32 @moduledir_readhints(%struct.moduledir* %27)
  store i32 0, i32* %20, align 4
  %29 = load %struct.moduledir*, %struct.moduledir** %6, align 8
  %30 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %427

34:                                               ; preds = %4
  %35 = load %struct.moduledir*, %struct.moduledir** %6, align 8
  %36 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %22, align 8
  %39 = load i8*, i8** %22, align 8
  %40 = load %struct.moduledir*, %struct.moduledir** %6, align 8
  %41 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %39, i64 %43
  store i8* %44, i8** %23, align 8
  br label %45

45:                                               ; preds = %376, %34
  %46 = load i8*, i8** %22, align 8
  %47 = load i8*, i8** %23, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %384

55:                                               ; preds = %53
  %56 = call i32 @getint(i8** %22)
  store i32 %56, i32* %13, align 4
  %57 = call i32 @getint(i8** %22)
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %22, align 8
  store i8* %58, i8** %21, align 8
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %375 [
    i32 128, label %60
    i32 130, label %77
    i32 129, label %100
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %62 = call i32 @getstr(i8** %21, i8* %61)
  %63 = call i32 @getint(i8** %21)
  store i32 %63, i32* %12, align 4
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %65 = call i32 @getstr(i8** %21, i8* %64)
  %66 = load i32, i32* @pnp_dump_flag, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i64, i64* @pnp_verbose_flag, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68, %60
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %73 = load i32, i32* %12, align 4
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %71, %68
  br label %376

77:                                               ; preds = %55
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %79 = call i32 @getstr(i8** %21, i8* %78)
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %81 = call i32 @getstr(i8** %21, i8* %80)
  %82 = load i8*, i8** %24, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %24, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %89 = call i8* @strdup(i8* %88)
  store i8* %89, i8** %24, align 8
  %90 = load i32, i32* @pnp_dump_flag, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* @pnp_verbose_flag, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92, %87
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %92
  br label %376

100:                                              ; preds = %55
  %101 = load i32, i32* @pnp_dump_flag, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @pnp_unbound_flag, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %24, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %24, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %376

114:                                              ; preds = %109, %106, %103, %100
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %116 = call i32 @getstr(i8** %21, i8* %115)
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %118 = call i32 @getstr(i8** %21, i8* %117)
  %119 = call i32 @getint(i8** %21)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* @pnp_dump_flag, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load i64, i64* @pnp_verbose_flag, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122, %114
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %128 = load i32, i32* %14, align 4
  %129 = load i8*, i8** %24, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %126, i8* %127, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %125, %122
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i64, i64* @pnp_verbose_flag, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %142 = call i32 @strcpy(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @strcmp(i8* %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i64, i64* @pnp_verbose_flag, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %154, %151
  br label %376

159:                                              ; preds = %146, %143
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %371, %159
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %374

164:                                              ; preds = %160
  %165 = load i64, i64* @pnp_verbose_flag, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %15, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32, i32* @pnp_dump_flag, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %170
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %176, i8** %25, align 8
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %177

177:                                              ; preds = %346, %175
  %178 = load i8*, i8** %25, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  switch i32 %180, label %322 [
    i32 73, label %181
    i32 74, label %181
    i32 71, label %181
    i32 76, label %181
    i32 77, label %181
    i32 68, label %250
    i32 90, label %250
    i32 84, label %277
  ]

181:                                              ; preds = %177, %177, %177, %177, %177
  %182 = call i32 @getint(i8** %21)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* @pnp_dump_flag, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %186)
  br label %327

188:                                              ; preds = %181
  %189 = load i32, i32* %18, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32, i32* %18, align 4
  %193 = shl i32 1, %192
  %194 = load i32, i32* %17, align 4
  %195 = and i32 %193, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %327

198:                                              ; preds = %191, %188
  %199 = load i8*, i8** %25, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 @pnpval_as_int(i8* %200, i8* %201)
  store i32 %202, i32* %19, align 4
  %203 = load i64, i64* @pnp_verbose_flag, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %198
  %206 = load i8*, i8** %25, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8*, i8** %25, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %207, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %205, %198
  %215 = load i8*, i8** %25, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  switch i32 %217, label %249 [
    i32 74, label %218
    i32 73, label %223
    i32 71, label %231
    i32 76, label %239
    i32 77, label %247
  ]

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %249

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %214, %222
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  br label %230

230:                                              ; preds = %227, %223
  br label %249

231:                                              ; preds = %214
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %235, %231
  br label %249

239:                                              ; preds = %214
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %243, %239
  br label %249

247:                                              ; preds = %214
  %248 = load i32, i32* %12, align 4
  store i32 %248, i32* %17, align 4
  br label %249

249:                                              ; preds = %214, %247, %246, %238, %230, %221
  br label %327

250:                                              ; preds = %177, %177
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %252 = call i32 @getstr(i8** %21, i8* %251)
  %253 = load i32, i32* @pnp_dump_flag, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %256)
  br label %327

258:                                              ; preds = %250
  %259 = load i8*, i8** %25, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 68
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %327

264:                                              ; preds = %258
  %265 = load i8*, i8** %25, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = load i8*, i8** %9, align 8
  %268 = call i8* @pnpval_as_str(i8* %266, i8* %267)
  store i8* %268, i8** %26, align 8
  %269 = load i8*, i8** %26, align 8
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %271 = call i32 @strcmp(i8* %269, i8* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %264
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %16, align 4
  br label %276

276:                                              ; preds = %273, %264
  br label %327

277:                                              ; preds = %177
  %278 = load i32, i32* @pnp_dump_flag, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  br label %327

281:                                              ; preds = %277
  %282 = load i8*, i8** %25, align 8
  %283 = load i8*, i8** %25, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %282, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 59
  br i1 %290, label %291, label %298

291:                                              ; preds = %281
  %292 = load i8*, i8** %25, align 8
  %293 = load i8*, i8** %25, align 8
  %294 = call i32 @strlen(i8* %293)
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %292, i64 %296
  store i8 0, i8* %297, align 1
  br label %298

298:                                              ; preds = %291, %281
  %299 = load i8*, i8** %9, align 8
  %300 = load i8*, i8** %25, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = call i8* @strstr(i8* %299, i8* %301)
  store i8* %302, i8** %26, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load i32, i32* %16, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %16, align 4
  br label %321

307:                                              ; preds = %298
  %308 = load i8*, i8** %26, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = icmp ugt i8* %308, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %307
  %312 = load i8*, i8** %26, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 -1
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %315, 32
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %16, align 4
  br label %320

320:                                              ; preds = %317, %311, %307
  br label %321

321:                                              ; preds = %320, %304
  br label %327

322:                                              ; preds = %177
  %323 = load i8*, i8** %25, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %322, %321, %280, %276, %263, %255, %249, %197, %185
  %328 = load i32, i32* %18, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %18, align 4
  %330 = load i8*, i8** %25, align 8
  %331 = call i8* @strchr(i8* %330, i8 signext 59)
  store i8* %331, i8** %25, align 8
  %332 = load i8*, i8** %25, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %327
  %335 = load i8*, i8** %25, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %25, align 8
  br label %337

337:                                              ; preds = %334, %327
  br label %338

338:                                              ; preds = %337
  %339 = load i8*, i8** %25, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load i8*, i8** %25, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  br label %346

346:                                              ; preds = %341, %338
  %347 = phi i1 [ false, %338 ], [ %345, %341 ]
  br i1 %347, label %177, label %348

348:                                              ; preds = %346
  %349 = load i32, i32* @pnp_dump_flag, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %370

353:                                              ; preds = %348
  %354 = load i32, i32* %16, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %369, label %356

356:                                              ; preds = %353
  %357 = load i64, i64* @pnp_unbound_flag, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %356
  %360 = load i64, i64* @pnp_verbose_flag, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i8*, i8** %24, align 8
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %363)
  br label %365

365:                                              ; preds = %362, %359
  br label %366

366:                                              ; preds = %365, %356
  %367 = load i32, i32* %20, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %20, align 4
  br label %369

369:                                              ; preds = %366, %353
  br label %370

370:                                              ; preds = %369, %351
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %15, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %15, align 4
  br label %160

374:                                              ; preds = %160
  br label %376

375:                                              ; preds = %55
  br label %376

376:                                              ; preds = %375, %374, %158, %113, %99, %76
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = sub i64 %378, 4
  %380 = load i8*, i8** %22, align 8
  %381 = ptrtoint i8* %380 to i64
  %382 = add i64 %379, %381
  %383 = inttoptr i64 %382 to i8*
  store i8* %383, i8** %22, align 8
  br label %45

384:                                              ; preds = %53
  %385 = load i64, i64* @pnp_unbound_flag, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %419

387:                                              ; preds = %384
  %388 = load i32, i32* %20, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %419

390:                                              ; preds = %387
  %391 = load i8*, i8** %9, align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %419

395:                                              ; preds = %390
  %396 = load i64, i64* @pnp_verbose_flag, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %400

400:                                              ; preds = %398, %395
  %401 = load i8*, i8** %8, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %400
  %406 = load i8*, i8** %8, align 8
  br label %408

407:                                              ; preds = %400
  br label %408

408:                                              ; preds = %407, %405
  %409 = phi i8* [ %406, %405 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), %407 ]
  %410 = load i8*, i8** %7, align 8
  %411 = load i8*, i8** %9, align 8
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %409, i8* %410, i8* %411)
  %413 = load i64, i64* @pnp_verbose_flag, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %408
  %416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %417

417:                                              ; preds = %415, %408
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %419

419:                                              ; preds = %417, %390, %387, %384
  %420 = load i32, i32* %20, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  %423 = load i8*, i8** %24, align 8
  store i8* %423, i8** %5, align 8
  br label %428

424:                                              ; preds = %419
  %425 = load i8*, i8** %24, align 8
  %426 = call i32 @free(i8* %425)
  br label %427

427:                                              ; preds = %424, %33
  store i8* null, i8** %5, align 8
  br label %428

428:                                              ; preds = %427, %422
  %429 = load i8*, i8** %5, align 8
  ret i8* %429
}

declare dso_local i32 @moduledir_readhints(%struct.moduledir*) #1

declare dso_local i32 @getint(i8**) #1

declare dso_local i32 @getstr(i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pnpval_as_int(i8*, i8*) #1

declare dso_local i8* @pnpval_as_str(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
