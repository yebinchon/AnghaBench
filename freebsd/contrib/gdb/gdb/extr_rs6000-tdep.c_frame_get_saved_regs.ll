; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_frame_get_saved_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_frame_get_saved_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.rs6000_framedata = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, %struct.rs6000_framedata*)* @frame_get_saved_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_get_saved_regs(%struct.frame_info* %0, %struct.rs6000_framedata* %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.rs6000_framedata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rs6000_framedata, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store %struct.rs6000_framedata* %1, %struct.rs6000_framedata** %4, align 8
  %17 = load i32, i32* @current_gdbarch, align 4
  %18 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %17)
  store %struct.gdbarch_tdep* %18, %struct.gdbarch_tdep** %7, align 8
  %19 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %20 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %324

26:                                               ; preds = %2
  %27 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %28 = icmp eq %struct.rs6000_framedata* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  store %struct.rs6000_framedata* %6, %struct.rs6000_framedata** %4, align 8
  %30 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %31 = call i32 @get_frame_func(%struct.frame_info* %30)
  %32 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %33 = call i32 @get_frame_pc(%struct.frame_info* %32)
  %34 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %35 = call i32 @skip_prologue(i32 %31, i32 %33, %struct.rs6000_framedata* %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %38 = call i32 @frame_saved_regs_zalloc(%struct.frame_info* %37)
  %39 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %40 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %36
  %44 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %45 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %50 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %55 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %60 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %65 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %70 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %75 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %73, %68, %63, %58, %53, %48, %43, %36
  %80 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %81 = call i32 @DEPRECATED_FRAME_CHAIN(%struct.frame_info* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %78
  %83 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %84 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %90 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %94 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %111, %87
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %103 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %102)
  %104 = load i32, i32* @FP0_REGNUM, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 %101, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 8
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %97

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %82
  %116 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %117 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %123 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %12, align 4
  %126 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %127 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %147, %120
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %136 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %135)
  %137 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %138 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %136, i64 %142
  store i32 %134, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %133
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %130

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %115
  %152 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %153 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %203

156:                                              ; preds = %151
  %157 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %158 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, -1
  br i1 %160, label %161, label %203

161:                                              ; preds = %156
  %162 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %163 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %161
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %170 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %14, align 4
  %174 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %175 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %198, %166
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 32
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %184 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %183)
  %185 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %186 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %184, i64 %190
  store i32 %182, i32* %191, align 4
  %192 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %193 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %178

201:                                              ; preds = %178
  br label %202

202:                                              ; preds = %201, %161
  br label %203

203:                                              ; preds = %202, %156, %151
  %204 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %205 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %266

208:                                              ; preds = %203
  %209 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %210 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, -1
  br i1 %212, label %213, label %266

213:                                              ; preds = %208
  %214 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %215 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %216, 0
  br i1 %217, label %218, label %265

218:                                              ; preds = %213
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %222 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %221, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %220, %223
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %16, align 4
  %226 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %227 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %261, %218
  %231 = load i32, i32* %15, align 4
  %232 = icmp slt i32 %231, 32
  br i1 %232, label %233, label %264

233:                                              ; preds = %230
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %236 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %235)
  %237 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %238 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  store i32 %234, i32* %243, align 4
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 4
  %246 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %247 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %246)
  %248 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %249 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  store i32 %245, i32* %254, align 4
  %255 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %256 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %257)
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %16, align 4
  br label %261

261:                                              ; preds = %233
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  br label %230

264:                                              ; preds = %230
  br label %265

265:                                              ; preds = %264, %213
  br label %266

266:                                              ; preds = %265, %208, %203
  %267 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %268 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %285

271:                                              ; preds = %266
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %275 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %273, %276
  %278 = trunc i64 %277 to i32
  %279 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %280 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %279)
  %281 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %282 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %278, i32* %284, align 4
  br label %285

285:                                              ; preds = %271, %266
  %286 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %287 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %304

290:                                              ; preds = %285
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %294 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = trunc i64 %296 to i32
  %298 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %299 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %298)
  %300 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %301 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 %297, i32* %303, align 4
  br label %304

304:                                              ; preds = %290, %285
  %305 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %306 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %305, i32 0, i32 10
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %324

309:                                              ; preds = %304
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %4, align 8
  %313 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %312, i32 0, i32 10
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %311, %314
  %316 = trunc i64 %315 to i32
  %317 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %318 = call i32* @deprecated_get_frame_saved_regs(%struct.frame_info* %317)
  %319 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %320 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %318, i64 %322
  store i32 %316, i32* %323, align 4
  br label %324

324:                                              ; preds = %25, %309, %304
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32* @deprecated_get_frame_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @skip_prologue(i32, i32, %struct.rs6000_framedata*) #1

declare dso_local i32 @get_frame_func(%struct.frame_info*) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @frame_saved_regs_zalloc(%struct.frame_info*) #1

declare dso_local i32 @DEPRECATED_FRAME_CHAIN(%struct.frame_info*) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
