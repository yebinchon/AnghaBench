; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_gregset = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regcache = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@SPARC32_PSR_REGNUM = common dso_local global i32 0, align 4
@TSTATE_CWP = common dso_local global i32 0, align 4
@PSR_S = common dso_local global i32 0, align 4
@TSTATE_ICC = common dso_local global i32 0, align 4
@TSTATE_XCC = common dso_local global i32 0, align 4
@PSR_V8PLUS = common dso_local global i32 0, align 4
@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC64_STATE_REGNUM = common dso_local global i32 0, align 4
@SPARC64_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC64_FPRS_REGNUM = common dso_local global i32 0, align 4
@SPARC_G0_REGNUM = common dso_local global i32 0, align 4
@SPARC_G1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_supply_gregset(%struct.sparc_gregset* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sparc_gregset*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca [8 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sparc_gregset* %0, %struct.sparc_gregset** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %21 = load i32, i32* @current_gdbarch, align 4
  %22 = call i32 @gdbarch_ptr_bit(i32 %21)
  %23 = icmp eq i32 %22, 32
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %128

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %68

35:                                               ; preds = %32, %28
  %36 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %37 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @extract_unsigned_integer(i8* %42, i32 8)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @TSTATE_CWP, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @PSR_S, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @TSTATE_ICC, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 12
  %53 = or i32 %48, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @TSTATE_XCC, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 20
  %58 = or i32 %53, %57
  %59 = load i32, i32* @PSR_V8PLUS, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @store_unsigned_integer(i8* %61, i32 4, i32 %62)
  %64 = load %struct.regcache*, %struct.regcache** %6, align 8
  %65 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %67 = call i32 @regcache_raw_supply(%struct.regcache* %64, i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %35, %32
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %86

75:                                               ; preds = %72, %68
  %76 = load %struct.regcache*, %struct.regcache** %6, align 8
  %77 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %80 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = call i32 @regcache_raw_supply(%struct.regcache* %76, i32 %77, i8* %84)
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %104

93:                                               ; preds = %90, %86
  %94 = load %struct.regcache*, %struct.regcache** %6, align 8
  %95 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %98 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = call i32 @regcache_raw_supply(%struct.regcache* %94, i32 %95, i8* %102)
  br label %104

104:                                              ; preds = %93, %90
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %127

111:                                              ; preds = %108, %104
  %112 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %113 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 8
  %116 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %117 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %16, align 4
  %120 = load %struct.regcache*, %struct.regcache** %6, align 8
  %121 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i32 @regcache_raw_supply(%struct.regcache* %120, i32 %121, i8* %125)
  br label %127

127:                                              ; preds = %111, %108
  br label %234

128:                                              ; preds = %4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %145

135:                                              ; preds = %132, %128
  %136 = load %struct.regcache*, %struct.regcache** %6, align 8
  %137 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %140 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = call i32 @regcache_raw_supply(%struct.regcache* %136, i32 %137, i8* %143)
  br label %145

145:                                              ; preds = %135, %132
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %162

152:                                              ; preds = %149, %145
  %153 = load %struct.regcache*, %struct.regcache** %6, align 8
  %154 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %157 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = call i32 @regcache_raw_supply(%struct.regcache* %153, i32 %154, i8* %160)
  br label %162

162:                                              ; preds = %152, %149
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %179

169:                                              ; preds = %166, %162
  %170 = load %struct.regcache*, %struct.regcache** %6, align 8
  %171 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %174 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = call i32 @regcache_raw_supply(%struct.regcache* %170, i32 %171, i8* %177)
  br label %179

179:                                              ; preds = %169, %166
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @SPARC64_Y_REGNUM, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %211

186:                                              ; preds = %183, %179
  %187 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %188 = call i32 @memset(i8* %187, i32 0, i32 8)
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %190 = getelementptr inbounds i8, i8* %189, i64 8
  %191 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %192 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 0, %194
  %196 = getelementptr inbounds i8, i8* %190, i64 %195
  %197 = load i8*, i8** %10, align 8
  %198 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %199 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %204 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @memcpy(i8* %196, i8* %202, i32 %205)
  %207 = load %struct.regcache*, %struct.regcache** %6, align 8
  %208 = load i32, i32* @SPARC64_Y_REGNUM, align 4
  %209 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %210 = call i32 @regcache_raw_supply(%struct.regcache* %207, i32 %208, i8* %209)
  br label %211

211:                                              ; preds = %186, %183
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @SPARC64_FPRS_REGNUM, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %7, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %233

218:                                              ; preds = %215, %211
  %219 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %220 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, -1
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = load %struct.regcache*, %struct.regcache** %6, align 8
  %225 = load i32, i32* @SPARC64_FPRS_REGNUM, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %228 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %226, i64 %230
  %232 = call i32 @regcache_raw_supply(%struct.regcache* %224, i32 %225, i8* %231)
  br label %233

233:                                              ; preds = %223, %218, %215
  br label %234

234:                                              ; preds = %233, %127
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %245

241:                                              ; preds = %238, %234
  %242 = load %struct.regcache*, %struct.regcache** %6, align 8
  %243 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %244 = call i32 @regcache_raw_supply(%struct.regcache* %242, i32 %243, i8* null)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @SPARC_G1_REGNUM, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %249, %245
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %293

256:                                              ; preds = %253, %249
  %257 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %258 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %18, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* %18, align 4
  %264 = add nsw i32 %263, 4
  store i32 %264, i32* %18, align 4
  br label %265

265:                                              ; preds = %262, %256
  %266 = load i32, i32* @SPARC_G1_REGNUM, align 4
  store i32 %266, i32* %11, align 4
  br label %267

267:                                              ; preds = %289, %265
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %292

271:                                              ; preds = %267
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %7, align 4
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %286

278:                                              ; preds = %275, %271
  %279 = load %struct.regcache*, %struct.regcache** %6, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i8*, i8** %10, align 8
  %282 = load i32, i32* %18, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = call i32 @regcache_raw_supply(%struct.regcache* %279, i32 %280, i8* %284)
  br label %286

286:                                              ; preds = %278, %275
  %287 = load i32, i32* %18, align 4
  %288 = add nsw i32 %287, 8
  store i32 %288, i32* %18, align 4
  br label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %267

292:                                              ; preds = %267
  br label %293

293:                                              ; preds = %292, %253
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %296 = icmp sge i32 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %300 = icmp sle i32 %298, %299
  br i1 %300, label %304, label %301

301:                                              ; preds = %297, %293
  %302 = load i32, i32* %7, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %355

304:                                              ; preds = %301, %297
  %305 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %306 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, -1
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load %struct.regcache*, %struct.regcache** %6, align 8
  %311 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %312 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %310, i32 %311, i32* %19)
  %313 = load %struct.regcache*, %struct.regcache** %6, align 8
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %7, align 4
  %316 = call i32 @sparc_supply_rwindow(%struct.regcache* %313, i32 %314, i32 %315)
  br label %354

317:                                              ; preds = %304
  %318 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %319 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %20, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = load i32, i32* %20, align 4
  %325 = add nsw i32 %324, 4
  store i32 %325, i32* %20, align 4
  br label %326

326:                                              ; preds = %323, %317
  %327 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %327, i32* %11, align 4
  br label %328

328:                                              ; preds = %350, %326
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %353

332:                                              ; preds = %328
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %11, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %339, label %336

336:                                              ; preds = %332
  %337 = load i32, i32* %7, align 4
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %339, label %347

339:                                              ; preds = %336, %332
  %340 = load %struct.regcache*, %struct.regcache** %6, align 8
  %341 = load i32, i32* %11, align 4
  %342 = load i8*, i8** %10, align 8
  %343 = load i32, i32* %20, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = call i32 @regcache_raw_supply(%struct.regcache* %340, i32 %341, i8* %345)
  br label %347

347:                                              ; preds = %339, %336
  %348 = load i32, i32* %20, align 4
  %349 = add nsw i32 %348, 8
  store i32 %349, i32* %20, align 4
  br label %350

350:                                              ; preds = %347
  %351 = load i32, i32* %11, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %11, align 4
  br label %328

353:                                              ; preds = %328
  br label %354

354:                                              ; preds = %353, %309
  br label %355

355:                                              ; preds = %354, %301
  ret void
}

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @sparc_supply_rwindow(%struct.regcache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
