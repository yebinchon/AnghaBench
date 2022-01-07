; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rs6000_framedata = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfd_arch_info = type { i64 }
%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@bfd_mach_ppc_e500 = common dso_local global i64 0, align 8
@max_skip_non_prologue_insns = common dso_local global i32 0, align 4
@misc_function_vector = common dso_local global %struct.TYPE_2__* null, align 8
@tmp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.rs6000_framedata*)* @skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_prologue(i64 %0, i64 %1, %struct.rs6000_framedata* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rs6000_framedata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.bfd_arch_info*, align 8
  %26 = alloca %struct.gdbarch_tdep*, align 8
  %27 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rs6000_framedata* %2, %struct.rs6000_framedata** %6, align 8
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %30 = load i32, i32* @current_gdbarch, align 4
  %31 = call %struct.bfd_arch_info* @gdbarch_bfd_arch_info(i32 %30)
  store %struct.bfd_arch_info* %31, %struct.bfd_arch_info** %25, align 8
  %32 = load i32, i32* @current_gdbarch, align 4
  %33 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %32)
  store %struct.gdbarch_tdep* %33, %struct.gdbarch_tdep** %26, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @refine_prologue_limit(i64 %37, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %3
  %41 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %42 = call i32 @memset(%struct.rs6000_framedata* %41, i32 0, i32 96)
  %43 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %44 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %46 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %48 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 8
  %49 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %50 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %49, i32 0, i32 3
  store i32 -1, i32* %50, align 4
  %51 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %52 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %51, i32 0, i32 4
  store i32 -1, i32* %52, align 8
  %53 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %54 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %53, i32 0, i32 5
  store i32 1, i32* %54, align 4
  %55 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %56 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %55, i32 0, i32 6
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %788, %40
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %791

70:                                               ; preds = %65, %62
  store i32 1, i32* %23, align 4
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %73 = call i64 @target_read_memory(i64 %71, i8* %72, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %791

76:                                               ; preds = %70
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %78 = call i64 @extract_signed_integer(i8* %77, i32 4)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = and i64 %79, 4229955583
  %81 = icmp eq i64 %80, 2080899750
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = and i64 %83, 65011712
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  br label %788

86:                                               ; preds = %76
  %87 = load i64, i64* %11, align 8
  %88 = and i64 %87, 4229955583
  %89 = icmp eq i64 %88, 2080374822
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = and i64 %91, 65011712
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %788

94:                                               ; preds = %86
  %95 = load i64, i64* %11, align 8
  %96 = and i64 %95, 4229890048
  %97 = icmp eq i64 %96, 3623944192
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @GET_SRC_REG(i64 %99)
  store i32 %100, i32* %20, align 4
  %101 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %102 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %111, label %105

105:                                              ; preds = %98
  %106 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %107 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105, %98
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %114 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @SIGNED_SHORT(i64 %115)
  %117 = load i64, i64* %12, align 8
  %118 = add nsw i64 %116, %117
  %119 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %120 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %111, %105
  br label %788

122:                                              ; preds = %94
  %123 = load i64, i64* %11, align 8
  %124 = and i64 %123, 4229890048
  %125 = icmp eq i64 %124, 3154182144
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = load i64, i64* %11, align 8
  %128 = and i64 %127, 4229890048
  %129 = icmp eq i64 %128, 2415984640
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = and i64 %131, 4229890051
  %133 = icmp eq i64 %132, 4160815104
  br i1 %133, label %134, label %169

134:                                              ; preds = %130, %126
  %135 = load i64, i64* %11, align 8
  %136 = and i64 %135, 65011712
  %137 = icmp uge i64 %136, 27262976
  br i1 %137, label %138, label %169

138:                                              ; preds = %134, %122
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @GET_SRC_REG(i64 %139)
  store i32 %140, i32* %20, align 4
  %141 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %142 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %151, label %145

145:                                              ; preds = %138
  %146 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %147 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %20, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %145, %138
  %152 = load i32, i32* %20, align 4
  %153 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %154 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i64, i64* %11, align 8
  %156 = and i64 %155, 4229890051
  %157 = icmp eq i64 %156, 4160815104
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i64, i64* %11, align 8
  %160 = and i64 %159, -4
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %158, %151
  %162 = load i64, i64* %11, align 8
  %163 = call i64 @SIGNED_SHORT(i64 %162)
  %164 = load i64, i64* %12, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %167 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %166, i32 0, i32 8
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %161, %145
  br label %788

169:                                              ; preds = %134, %130
  %170 = load i64, i64* %11, align 8
  %171 = and i64 %170, 4294901760
  %172 = icmp eq i64 %171, 1610612736
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 0, i32* %23, align 4
  br label %788

174:                                              ; preds = %169
  %175 = load i64, i64* %11, align 8
  %176 = and i64 %175, 4294901760
  %177 = icmp eq i64 %176, 1006632960
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load i64, i64* %11, align 8
  %180 = and i64 %179, 65535
  %181 = shl i64 %180, 16
  %182 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %183 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %182, i32 0, i32 9
  store i64 %181, i64* %183, align 8
  %184 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %185 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %184, i32 0, i32 5
  store i32 0, i32* %185, align 4
  br label %788

186:                                              ; preds = %174
  %187 = load i64, i64* %11, align 8
  %188 = and i64 %187, 4294901760
  %189 = icmp eq i64 %188, 1610612736
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i64, i64* %11, align 8
  %192 = and i64 %191, 65535
  %193 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %194 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = or i64 %195, %192
  store i64 %196, i64* %194, align 8
  %197 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %198 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %197, i32 0, i32 5
  store i32 0, i32* %198, align 4
  br label %788

199:                                              ; preds = %186
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %244

202:                                              ; preds = %199
  %203 = load i64, i64* %11, align 8
  %204 = and i64 %203, 4294901760
  %205 = load i32, i32* %14, align 4
  %206 = or i32 %205, -134152192
  %207 = zext i32 %206 to i64
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %223, label %209

209:                                              ; preds = %202
  %210 = load i64, i64* %11, align 8
  %211 = and i64 %210, 4294901760
  %212 = load i32, i32* %14, align 4
  %213 = or i32 %212, -1878982656
  %214 = zext i32 %213 to i64
  %215 = icmp eq i64 %211, %214
  br i1 %215, label %223, label %216

216:                                              ; preds = %209
  %217 = load i64, i64* %11, align 8
  %218 = and i64 %217, 4294901760
  %219 = load i32, i32* %14, align 4
  %220 = or i32 %219, -1811873792
  %221 = zext i32 %220 to i64
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %244

223:                                              ; preds = %216, %209, %202
  %224 = load i64, i64* %12, align 8
  %225 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %226 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %225, i32 0, i32 10
  store i64 %224, i64* %226, align 8
  %227 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %228 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %227, i32 0, i32 6
  store i32 0, i32* %228, align 8
  store i32 0, i32* %14, align 4
  %229 = load i64, i64* %11, align 8
  %230 = and i64 %229, 4227858435
  %231 = icmp eq i64 %230, 4160749568
  br i1 %231, label %236, label %232

232:                                              ; preds = %223
  %233 = load i64, i64* %11, align 8
  %234 = and i64 %233, 4227858432
  %235 = icmp eq i64 %234, 2415919104
  br i1 %235, label %236, label %243

236:                                              ; preds = %232, %223
  %237 = load i64, i64* %11, align 8
  %238 = call i64 @SIGNED_SHORT(i64 %237)
  %239 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %240 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %239, i32 0, i32 10
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, %238
  store i64 %242, i64* %240, align 8
  br label %243

243:                                              ; preds = %236, %232
  br label %788

244:                                              ; preds = %216, %199
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, -1
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load i64, i64* %11, align 8
  %249 = and i64 %248, 4294901760
  %250 = load i32, i32* %15, align 4
  %251 = or i32 %250, -134152192
  %252 = zext i32 %251 to i64
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %268, label %254

254:                                              ; preds = %247
  %255 = load i64, i64* %11, align 8
  %256 = and i64 %255, 4294901760
  %257 = load i32, i32* %15, align 4
  %258 = or i32 %257, -1878982656
  %259 = zext i32 %258 to i64
  %260 = icmp eq i64 %256, %259
  br i1 %260, label %268, label %261

261:                                              ; preds = %254
  %262 = load i64, i64* %11, align 8
  %263 = and i64 %262, 4294901760
  %264 = load i32, i32* %15, align 4
  %265 = or i32 %264, -1811873792
  %266 = zext i32 %265 to i64
  %267 = icmp eq i64 %263, %266
  br i1 %267, label %268, label %287

268:                                              ; preds = %261, %254, %247
  %269 = load i64, i64* %12, align 8
  %270 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %271 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %270, i32 0, i32 11
  store i64 %269, i64* %271, align 8
  store i32 0, i32* %15, align 4
  %272 = load i64, i64* %11, align 8
  %273 = and i64 %272, 4227858435
  %274 = icmp eq i64 %273, 4160749568
  br i1 %274, label %279, label %275

275:                                              ; preds = %268
  %276 = load i64, i64* %11, align 8
  %277 = and i64 %276, 4227858432
  %278 = icmp eq i64 %277, 2415919104
  br i1 %278, label %279, label %286

279:                                              ; preds = %275, %268
  %280 = load i64, i64* %11, align 8
  %281 = call i64 @SIGNED_SHORT(i64 %280)
  %282 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %283 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, %281
  store i64 %285, i64* %283, align 8
  br label %286

286:                                              ; preds = %279, %275
  br label %788

287:                                              ; preds = %261, %244
  %288 = load i64, i64* %11, align 8
  %289 = icmp eq i64 %288, 1207959557
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %788

291:                                              ; preds = %287
  %292 = load i64, i64* %11, align 8
  %293 = icmp eq i64 %292, 1207959556
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %791

295:                                              ; preds = %291
  %296 = load i64, i64* %11, align 8
  %297 = and i64 %296, 4294901760
  %298 = icmp eq i64 %297, 1069547520
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = load i64, i64* %11, align 8
  %301 = and i64 %300, 4294901760
  %302 = icmp eq i64 %301, 1004404736
  br i1 %302, label %303, label %304

303:                                              ; preds = %299, %295
  br label %788

304:                                              ; preds = %299
  %305 = load i64, i64* %11, align 8
  %306 = and i64 %305, 4227858433
  %307 = icmp eq i64 %306, 1207959553
  br i1 %307, label %308, label %327

308:                                              ; preds = %304
  %309 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %310 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %309, i32 0, i32 5
  store i32 0, i32* %310, align 4
  %311 = load i64, i64* %4, align 8
  %312 = load i64, i64* %7, align 8
  %313 = sub nsw i64 %311, %312
  %314 = icmp sgt i64 %313, 8
  br i1 %314, label %315, label %316

315:                                              ; preds = %308
  br label %791

316:                                              ; preds = %308
  %317 = load i64, i64* %4, align 8
  %318 = add nsw i64 %317, 4
  %319 = call i64 @read_memory_integer(i64 %318, i32 4)
  store i64 %319, i64* %11, align 8
  %320 = load i64, i64* %11, align 8
  %321 = icmp eq i64 %320, 1307540354
  br i1 %321, label %325, label %322

322:                                              ; preds = %316
  %323 = load i64, i64* %11, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322, %316
  br label %791

326:                                              ; preds = %322
  br label %788

327:                                              ; preds = %304
  %328 = load i64, i64* %11, align 8
  %329 = and i64 %328, 4229890048
  %330 = icmp eq i64 %329, 2483093504
  br i1 %330, label %331, label %341

331:                                              ; preds = %327
  %332 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %333 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %332, i32 0, i32 5
  store i32 0, i32* %333, align 4
  %334 = load i64, i64* %11, align 8
  %335 = call i64 @SIGNED_SHORT(i64 %334)
  %336 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %337 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %336, i32 0, i32 9
  store i64 %335, i64* %337, align 8
  %338 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %339 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %12, align 8
  br label %788

341:                                              ; preds = %327
  %342 = load i64, i64* %11, align 8
  %343 = and i64 %342, 4229890410
  %344 = icmp eq i64 %343, 2080440686
  br i1 %344, label %345, label %351

345:                                              ; preds = %341
  %346 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %347 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %346, i32 0, i32 5
  store i32 0, i32* %347, align 4
  %348 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %349 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %348, i32 0, i32 9
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %12, align 8
  br label %788

351:                                              ; preds = %341
  %352 = load i64, i64* %11, align 8
  %353 = and i64 %352, 4229890051
  %354 = icmp eq i64 %353, 4160815105
  br i1 %354, label %355, label %366

355:                                              ; preds = %351
  %356 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %357 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %356, i32 0, i32 5
  store i32 0, i32* %357, align 4
  %358 = load i64, i64* %11, align 8
  %359 = and i64 %358, -4
  %360 = call i64 @SIGNED_SHORT(i64 %359)
  %361 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %362 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %361, i32 0, i32 9
  store i64 %360, i64* %362, align 8
  %363 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %364 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %363, i32 0, i32 9
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %12, align 8
  br label %788

366:                                              ; preds = %351
  %367 = load i64, i64* %11, align 8
  %368 = and i64 %367, 4229890410
  %369 = icmp eq i64 %368, 2080440682
  br i1 %369, label %370, label %376

370:                                              ; preds = %366
  %371 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %372 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %371, i32 0, i32 5
  store i32 0, i32* %372, align 4
  %373 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %374 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %373, i32 0, i32 9
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %12, align 8
  br label %788

376:                                              ; preds = %366
  %377 = load i64, i64* %11, align 8
  %378 = lshr i64 %377, 22
  %379 = icmp eq i64 %378, 527
  br i1 %379, label %384, label %380

380:                                              ; preds = %376
  %381 = load i64, i64* %11, align 8
  %382 = lshr i64 %381, 22
  %383 = icmp eq i64 %382, 943
  br i1 %383, label %384, label %388

384:                                              ; preds = %380, %376
  %385 = load i32, i32* %22, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %384
  store i32 1, i32* %22, align 4
  br label %788

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %11, align 8
  %390 = and i64 %389, 4227860478
  %391 = icmp eq i64 %390, 2080375672
  br i1 %391, label %392, label %412

392:                                              ; preds = %388
  %393 = load i64, i64* %11, align 8
  %394 = lshr i64 %393, 21
  %395 = and i64 %394, 31
  %396 = icmp uge i64 %395, 3
  br i1 %396, label %397, label %412

397:                                              ; preds = %392
  %398 = load i64, i64* %11, align 8
  %399 = lshr i64 %398, 21
  %400 = and i64 %399, 31
  %401 = icmp ule i64 %400, 10
  br i1 %401, label %402, label %412

402:                                              ; preds = %397
  %403 = load i64, i64* %11, align 8
  %404 = lshr i64 %403, 16
  %405 = and i64 %404, 31
  %406 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %407 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = icmp sge i64 %405, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %402
  br label %788

412:                                              ; preds = %402, %397, %392, %388
  %413 = load i64, i64* %11, align 8
  %414 = and i64 %413, 4229890051
  %415 = icmp eq i64 %414, 4160815104
  br i1 %415, label %424, label %416

416:                                              ; preds = %412
  %417 = load i64, i64* %11, align 8
  %418 = and i64 %417, 4229890048
  %419 = icmp eq i64 %418, 3623944192
  br i1 %419, label %424, label %420

420:                                              ; preds = %416
  %421 = load i64, i64* %11, align 8
  %422 = and i64 %421, 4229890048
  %423 = icmp eq i64 %422, 4227923968
  br i1 %423, label %424, label %425

424:                                              ; preds = %420, %416, %412
  br label %788

425:                                              ; preds = %420
  %426 = load i32, i32* %21, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %425
  %429 = load i64, i64* %11, align 8
  %430 = and i64 %429, 4229890048
  %431 = icmp eq i64 %430, 2417950720
  br i1 %431, label %440, label %432

432:                                              ; preds = %428
  %433 = load i64, i64* %11, align 8
  %434 = and i64 %433, 4229890048
  %435 = icmp eq i64 %434, 3625910272
  br i1 %435, label %440, label %436

436:                                              ; preds = %432
  %437 = load i64, i64* %11, align 8
  %438 = and i64 %437, 4229890048
  %439 = icmp eq i64 %438, 4229890048
  br i1 %439, label %440, label %441

440:                                              ; preds = %436, %432, %428
  br label %788

441:                                              ; preds = %436, %425
  %442 = load i64, i64* %11, align 8
  %443 = icmp eq i64 %442, 1614741504
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load i64, i64* %11, align 8
  %446 = icmp eq i64 %445, 2084506488
  br i1 %446, label %447, label %456

447:                                              ; preds = %444, %441
  %448 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %449 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %448, i32 0, i32 5
  store i32 0, i32* %449, align 4
  store i32 1, i32* %21, align 4
  %450 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %26, align 8
  %451 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %452, 31
  %454 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %455 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %454, i32 0, i32 4
  store i32 %453, i32* %455, align 8
  br label %788

456:                                              ; preds = %444
  %457 = load i64, i64* %11, align 8
  %458 = and i64 %457, 4229955583
  %459 = icmp eq i64 %458, 939589632
  br i1 %459, label %460, label %474

460:                                              ; preds = %456
  %461 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %462 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %461, i32 0, i32 5
  store i32 0, i32* %462, align 4
  store i32 1, i32* %21, align 4
  %463 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %26, align 8
  %464 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = load i64, i64* %11, align 8
  %468 = and i64 %467, -939589633
  %469 = lshr i64 %468, 21
  %470 = add i64 %466, %469
  %471 = trunc i64 %470 to i32
  %472 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %473 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %472, i32 0, i32 4
  store i32 %471, i32* %473, align 8
  br label %788

474:                                              ; preds = %456
  %475 = load i64, i64* %11, align 8
  %476 = and i64 %475, 4229955583
  %477 = icmp eq i64 %476, 2080391846
  br i1 %477, label %478, label %481

478:                                              ; preds = %474
  %479 = load i64, i64* %11, align 8
  %480 = call i32 @GET_SRC_REG(i64 %479)
  store i32 %480, i32* %19, align 4
  br label %788

481:                                              ; preds = %474
  %482 = load i64, i64* %11, align 8
  %483 = and i64 %482, 4229955583
  %484 = icmp eq i64 %483, 2080392102
  br i1 %484, label %485, label %486

485:                                              ; preds = %481
  br label %788

486:                                              ; preds = %481
  %487 = load i64, i64* %11, align 8
  %488 = and i64 %487, 4229890048
  %489 = icmp eq i64 %488, 2415984640
  br i1 %489, label %490, label %503

490:                                              ; preds = %486
  %491 = load i32, i32* %19, align 4
  %492 = load i64, i64* %11, align 8
  %493 = call i32 @GET_SRC_REG(i64 %492)
  %494 = icmp eq i32 %491, %493
  br i1 %494, label %495, label %502

495:                                              ; preds = %490
  %496 = load i64, i64* %11, align 8
  %497 = call i64 @SIGNED_SHORT(i64 %496)
  %498 = load i64, i64* %12, align 8
  %499 = add nsw i64 %497, %498
  %500 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %501 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %500, i32 0, i32 12
  store i64 %499, i64* %501, align 8
  store i32 -1, i32* %19, align 4
  br label %502

502:                                              ; preds = %495, %490
  br label %788

503:                                              ; preds = %486
  %504 = load i64, i64* %11, align 8
  %505 = and i64 %504, 4227858432
  %506 = icmp eq i64 %505, 1677721600
  br i1 %506, label %511, label %507

507:                                              ; preds = %503
  %508 = load i64, i64* %11, align 8
  %509 = and i64 %508, 4227858432
  %510 = icmp eq i64 %509, 1610612736
  br i1 %510, label %511, label %512

511:                                              ; preds = %507, %503
  br label %788

512:                                              ; preds = %507
  %513 = load i64, i64* %11, align 8
  %514 = and i64 %513, 4294901760
  %515 = icmp eq i64 %514, 939524096
  br i1 %515, label %520, label %516

516:                                              ; preds = %512
  %517 = load i64, i64* %11, align 8
  %518 = and i64 %517, 4294901760
  %519 = icmp eq i64 %518, 968884224
  br i1 %519, label %520, label %524

520:                                              ; preds = %516, %512
  %521 = load i64, i64* %4, align 8
  store i64 %521, i64* %9, align 8
  %522 = load i64, i64* %11, align 8
  %523 = call i64 @SIGNED_SHORT(i64 %522)
  store i64 %523, i64* %13, align 8
  br label %760

524:                                              ; preds = %516
  %525 = load i64, i64* %11, align 8
  %526 = and i64 %525, 4229955583
  %527 = icmp eq i64 %526, 2082406862
  br i1 %527, label %528, label %557

528:                                              ; preds = %524
  %529 = load i64, i64* %4, align 8
  %530 = load i64, i64* %9, align 8
  %531 = add nsw i64 %530, 4
  %532 = icmp eq i64 %529, %531
  br i1 %532, label %533, label %556

533:                                              ; preds = %528
  %534 = load i64, i64* %11, align 8
  %535 = call i32 @GET_SRC_REG(i64 %534)
  store i32 %535, i32* %16, align 4
  %536 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %537 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = icmp eq i32 %538, -1
  br i1 %539, label %546, label %540

540:                                              ; preds = %533
  %541 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %542 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* %16, align 4
  %545 = icmp sgt i32 %543, %544
  br i1 %545, label %546, label %555

546:                                              ; preds = %540, %533
  %547 = load i32, i32* %16, align 4
  %548 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %549 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %548, i32 0, i32 2
  store i32 %547, i32* %549, align 8
  %550 = load i64, i64* %13, align 8
  %551 = load i64, i64* %12, align 8
  %552 = add nsw i64 %550, %551
  %553 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %554 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %553, i32 0, i32 13
  store i64 %552, i64* %554, align 8
  br label %555

555:                                              ; preds = %546, %540
  store i64 -1, i64* %13, align 8
  store i32 -1, i32* %16, align 4
  store i64 0, i64* %9, align 8
  br label %556

556:                                              ; preds = %555, %528
  br label %759

557:                                              ; preds = %524
  %558 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %25, align 8
  %559 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %602

563:                                              ; preds = %557
  %564 = load i64, i64* %11, align 8
  %565 = and i64 %564, 4229892095
  %566 = icmp eq i64 %565, 270467873
  br i1 %566, label %567, label %602

567:                                              ; preds = %563
  %568 = load i64, i64* %11, align 8
  %569 = and i64 %568, 65011712
  %570 = icmp uge i64 %569, 27262976
  br i1 %570, label %571, label %601

571:                                              ; preds = %567
  %572 = load i64, i64* %11, align 8
  %573 = call i32 @GET_SRC_REG(i64 %572)
  store i32 %573, i32* %17, align 4
  %574 = load i64, i64* %11, align 8
  %575 = lshr i64 %574, 11
  %576 = and i64 %575, 31
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %27, align 4
  %578 = load i32, i32* %27, align 4
  %579 = mul i32 %578, 8
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %18, align 8
  %581 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %582 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %581, i32 0, i32 3
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, -1
  br i1 %584, label %591, label %585

585:                                              ; preds = %571
  %586 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %587 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* %17, align 4
  %590 = icmp sgt i32 %588, %589
  br i1 %590, label %591, label %600

591:                                              ; preds = %585, %571
  %592 = load i32, i32* %17, align 4
  %593 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %594 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %593, i32 0, i32 3
  store i32 %592, i32* %594, align 4
  %595 = load i64, i64* %18, align 8
  %596 = load i64, i64* %12, align 8
  %597 = add nsw i64 %595, %596
  %598 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %599 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %598, i32 0, i32 14
  store i64 %597, i64* %599, align 8
  br label %600

600:                                              ; preds = %591, %585
  br label %601

601:                                              ; preds = %600, %567
  br label %788

602:                                              ; preds = %563, %557
  %603 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %25, align 8
  %604 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %641

608:                                              ; preds = %602
  %609 = load i64, i64* %11, align 8
  %610 = and i64 %609, 4292872191
  %611 = icmp eq i64 %610, 333447968
  br i1 %611, label %612, label %641

612:                                              ; preds = %608
  %613 = load i64, i64* %4, align 8
  %614 = load i64, i64* %9, align 8
  %615 = add nsw i64 %614, 4
  %616 = icmp eq i64 %613, %615
  br i1 %616, label %617, label %640

617:                                              ; preds = %612
  %618 = load i64, i64* %11, align 8
  %619 = call i32 @GET_SRC_REG(i64 %618)
  store i32 %619, i32* %17, align 4
  %620 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %621 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 4
  %623 = icmp eq i32 %622, -1
  br i1 %623, label %630, label %624

624:                                              ; preds = %617
  %625 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %626 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* %17, align 4
  %629 = icmp sgt i32 %627, %628
  br i1 %629, label %630, label %639

630:                                              ; preds = %624, %617
  %631 = load i32, i32* %17, align 4
  %632 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %633 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %632, i32 0, i32 3
  store i32 %631, i32* %633, align 4
  %634 = load i64, i64* %13, align 8
  %635 = load i64, i64* %12, align 8
  %636 = add nsw i64 %634, %635
  %637 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %638 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %637, i32 0, i32 14
  store i64 %636, i64* %638, align 8
  br label %639

639:                                              ; preds = %630, %624
  store i64 -1, i64* %13, align 8
  store i32 -1, i32* %17, align 4
  store i64 0, i64* %9, align 8
  br label %640

640:                                              ; preds = %639, %612
  br label %788

641:                                              ; preds = %608, %602
  %642 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %25, align 8
  %643 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %646 = icmp eq i64 %644, %645
  br i1 %646, label %647, label %678

647:                                              ; preds = %641
  %648 = load i64, i64* %11, align 8
  %649 = and i64 %648, 4292872191
  %650 = icmp eq i64 %649, 333447969
  br i1 %650, label %651, label %678

651:                                              ; preds = %647
  %652 = load i64, i64* %11, align 8
  %653 = call i32 @GET_SRC_REG(i64 %652)
  store i32 %653, i32* %17, align 4
  %654 = load i64, i64* %11, align 8
  %655 = lshr i64 %654, 11
  %656 = and i64 %655, 31
  %657 = mul i64 %656, 8
  store i64 %657, i64* %18, align 8
  %658 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %659 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 4
  %661 = icmp eq i32 %660, -1
  br i1 %661, label %668, label %662

662:                                              ; preds = %651
  %663 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %664 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %663, i32 0, i32 3
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* %17, align 4
  %667 = icmp sgt i32 %665, %666
  br i1 %667, label %668, label %677

668:                                              ; preds = %662, %651
  %669 = load i32, i32* %17, align 4
  %670 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %671 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %670, i32 0, i32 3
  store i32 %669, i32* %671, align 4
  %672 = load i64, i64* %18, align 8
  %673 = load i64, i64* %12, align 8
  %674 = add nsw i64 %672, %673
  %675 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %676 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %675, i32 0, i32 14
  store i64 %674, i64* %676, align 8
  br label %677

677:                                              ; preds = %668, %662
  br label %788

678:                                              ; preds = %647, %641
  %679 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %25, align 8
  %680 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %683 = icmp eq i64 %681, %682
  br i1 %683, label %684, label %722

684:                                              ; preds = %678
  %685 = load i64, i64* %11, align 8
  %686 = and i64 %685, 4229955583
  %687 = icmp eq i64 %686, 270467872
  br i1 %687, label %688, label %722

688:                                              ; preds = %684
  %689 = load i64, i64* %4, align 8
  %690 = load i64, i64* %9, align 8
  %691 = add nsw i64 %690, 4
  %692 = icmp eq i64 %689, %691
  br i1 %692, label %693, label %721

693:                                              ; preds = %688
  %694 = load i64, i64* %11, align 8
  %695 = and i64 %694, 65011712
  %696 = icmp uge i64 %695, 27262976
  br i1 %696, label %697, label %720

697:                                              ; preds = %693
  %698 = load i64, i64* %11, align 8
  %699 = call i32 @GET_SRC_REG(i64 %698)
  store i32 %699, i32* %17, align 4
  %700 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %701 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %700, i32 0, i32 3
  %702 = load i32, i32* %701, align 4
  %703 = icmp eq i32 %702, -1
  br i1 %703, label %710, label %704

704:                                              ; preds = %697
  %705 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %706 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %705, i32 0, i32 3
  %707 = load i32, i32* %706, align 4
  %708 = load i32, i32* %17, align 4
  %709 = icmp sgt i32 %707, %708
  br i1 %709, label %710, label %719

710:                                              ; preds = %704, %697
  %711 = load i32, i32* %17, align 4
  %712 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %713 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %712, i32 0, i32 3
  store i32 %711, i32* %713, align 4
  %714 = load i64, i64* %13, align 8
  %715 = load i64, i64* %12, align 8
  %716 = add nsw i64 %714, %715
  %717 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %718 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %717, i32 0, i32 14
  store i64 %716, i64* %718, align 8
  br label %719

719:                                              ; preds = %710, %704
  store i32 -1, i32* %17, align 4
  br label %720

720:                                              ; preds = %719, %693
  store i64 -1, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %788

721:                                              ; preds = %688
  br label %755

722:                                              ; preds = %684, %678
  %723 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %724 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %723, i32 0, i32 5
  %725 = load i32, i32* %724, align 4
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %736

727:                                              ; preds = %722
  %728 = load i32, i32* %14, align 4
  %729 = icmp eq i32 %728, -1
  br i1 %729, label %735, label %730

730:                                              ; preds = %727
  %731 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %732 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %731, i32 0, i32 6
  %733 = load i32, i32* %732, align 8
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %730, %727
  br label %791

736:                                              ; preds = %730, %722
  %737 = load i64, i64* %11, align 8
  %738 = icmp eq i64 %737, 1317011488
  br i1 %738, label %742, label %739

739:                                              ; preds = %736
  %740 = load i64, i64* %11, align 8
  %741 = icmp eq i64 %740, 1317012512
  br i1 %741, label %742, label %743

742:                                              ; preds = %739, %736
  br label %791

743:                                              ; preds = %739
  %744 = load i64, i64* %11, align 8
  %745 = and i64 %744, 4093640704
  %746 = icmp eq i64 %745, 1073741824
  br i1 %746, label %747, label %748

747:                                              ; preds = %743
  br label %791

748:                                              ; preds = %743
  %749 = load i32, i32* %24, align 4
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* %24, align 4
  %751 = load i32, i32* @max_skip_non_prologue_insns, align 4
  %752 = icmp sgt i32 %749, %751
  br i1 %752, label %753, label %754

753:                                              ; preds = %748
  br label %791

754:                                              ; preds = %748
  store i32 0, i32* %23, align 4
  br label %788

755:                                              ; preds = %721
  br label %756

756:                                              ; preds = %755
  br label %757

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757
  br label %759

759:                                              ; preds = %758, %556
  br label %760

760:                                              ; preds = %759, %520
  br label %761

761:                                              ; preds = %760
  br label %762

762:                                              ; preds = %761
  br label %763

763:                                              ; preds = %762
  br label %764

764:                                              ; preds = %763
  br label %765

765:                                              ; preds = %764
  br label %766

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  br label %768

768:                                              ; preds = %767
  br label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773
  br label %775

775:                                              ; preds = %774
  br label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  br label %778

778:                                              ; preds = %777
  br label %779

779:                                              ; preds = %778
  br label %780

780:                                              ; preds = %779
  br label %781

781:                                              ; preds = %780
  br label %782

782:                                              ; preds = %781
  br label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783
  br label %785

785:                                              ; preds = %784
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  br label %788

788:                                              ; preds = %787, %754, %720, %677, %640, %601, %511, %502, %485, %478, %460, %447, %440, %424, %411, %387, %370, %355, %345, %331, %326, %303, %290, %286, %243, %190, %178, %173, %168, %121, %90, %82
  %789 = load i64, i64* %4, align 8
  %790 = add nsw i64 %789, 4
  store i64 %790, i64* %4, align 8
  br label %57

791:                                              ; preds = %753, %747, %742, %735, %325, %315, %294, %75, %69
  %792 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %793 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %792, i32 0, i32 9
  %794 = load i64, i64* %793, align 8
  %795 = sub i64 0, %794
  %796 = load %struct.rs6000_framedata*, %struct.rs6000_framedata** %6, align 8
  %797 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %796, i32 0, i32 9
  store i64 %795, i64* %797, align 8
  %798 = load i64, i64* %8, align 8
  ret i64 %798
}

declare dso_local %struct.bfd_arch_info* @gdbarch_bfd_arch_info(i32) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @refine_prologue_limit(i64, i64) #1

declare dso_local i32 @memset(%struct.rs6000_framedata*, i32, i32) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i64 @extract_signed_integer(i8*, i32) #1

declare dso_local i32 @GET_SRC_REG(i64) #1

declare dso_local i64 @SIGNED_SHORT(i64) #1

declare dso_local i64 @read_memory_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
