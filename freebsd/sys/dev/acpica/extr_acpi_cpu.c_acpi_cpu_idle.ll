; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_softc = type { i32, i32, i32, i32, i32*, %struct.acpi_cx* }
%struct.acpi_cx = type { i32, i64, i64, i32*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@cpu_softc = common dso_local global %struct.acpi_cpu_softc** null, align 8
@cpuid = common dso_local global i32 0, align 4
@cpu_disable_c2_sleep = common dso_local global i64 0, align 8
@cpu_disable_c3_sleep = common dso_local global i64 0, align 8
@cpu_quirks = common dso_local global i32 0, align 4
@CPU_QUIRK_NO_BM_CTRL = common dso_local global i32 0, align 4
@ACPI_BITREG_BUS_MASTER_STATUS = common dso_local global i32 0, align 4
@ACPI_STATE_C0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"acpi_cpu_idle: C0 sleep\00", align 1
@ACPI_STATE_C1 = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@hz = common dso_local global i32 0, align 4
@ACPI_STATE_C3 = common dso_local global i64 0, align 8
@ACPI_BITREG_ARB_DISABLE = common dso_local global i32 0, align 4
@ACPI_BITREG_BUS_MASTER_RLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_cpu_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_cpu_softc*, align 8
  %4 = alloca %struct.acpi_cx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load %struct.acpi_cpu_softc**, %struct.acpi_cpu_softc*** @cpu_softc, align 8
  %14 = load i32, i32* @cpuid, align 4
  %15 = call i64 @PCPU_GET(i32 %14)
  %16 = getelementptr inbounds %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %13, i64 %15
  %17 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %16, align 8
  store %struct.acpi_cpu_softc* %17, %struct.acpi_cpu_softc** %3, align 8
  %18 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %19 = icmp eq %struct.acpi_cpu_softc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @acpi_cpu_c1()
  br label %302

22:                                               ; preds = %1
  %23 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %24 = call i64 @is_idle_disabled(%struct.acpi_cpu_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @acpi_cpu_c1()
  br label %302

28:                                               ; preds = %22
  %29 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %2, align 4
  %37 = ashr i32 %36, 12
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = ashr i32 %40, 12
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %34, %28
  store i32 0, i32* %10, align 4
  %43 = load i64, i64* @cpu_disable_c2_sleep, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @min(i32 %48, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %69

53:                                               ; preds = %42
  %54 = load i64, i64* @cpu_disable_c3_sleep, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @min(i32 %59, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %56
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %74, i32 0, i32 5
  %76 = load %struct.acpi_cx*, %struct.acpi_cx** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %76, i64 %78
  %80 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 3
  %83 = load i32, i32* %12, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %10, align 4
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %11, align 4
  br label %70

91:                                               ; preds = %85, %70
  %92 = load i32, i32* @cpu_quirks, align 4
  %93 = load i32, i32* @CPU_QUIRK_NO_BM_CTRL, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load i32, i32* @ACPI_BITREG_BUS_MASTER_STATUS, align 4
  %104 = call i32 @AcpiReadBitRegister(i32 %103, i32* %9)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @ACPI_SUCCESS(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @ACPI_BITREG_BUS_MASTER_STATUS, align 4
  %113 = call i32 @AcpiWriteBitRegister(i32 %112, i32 1)
  %114 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %115 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %111, %108, %102
  br label %118

118:                                              ; preds = %117, %96, %91
  %119 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %120 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %119, i32 0, i32 5
  %121 = load %struct.acpi_cx*, %struct.acpi_cx** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %121, i64 %123
  store %struct.acpi_cx* %124, %struct.acpi_cx** %4, align 8
  %125 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %126 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ACPI_STATE_C0, align 8
  %137 = icmp ne i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @KASSERT(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %140 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %141 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ACPI_STATE_C1, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %201

145:                                              ; preds = %118
  %146 = call i32 (...) @cpu_ticks()
  store i32 %146, i32* %5, align 4
  %147 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %148 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %153 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @CPU_GET_REG(i32* %154, i32 1)
  br label %156

156:                                              ; preds = %151, %145
  %157 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %158 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %163 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @acpi_cpu_idle_mwait(i32 %164)
  br label %168

166:                                              ; preds = %156
  %167 = call i32 (...) @acpi_cpu_c1()
  br label %168

168:                                              ; preds = %166, %161
  %169 = call i32 (...) @cpu_ticks()
  %170 = load i32, i32* %5, align 4
  %171 = sub nsw i32 %169, %170
  %172 = shl i32 %171, 20
  %173 = call i32 (...) @cpu_tickrate()
  %174 = sdiv i32 %172, %173
  store i32 %174, i32* %7, align 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %168
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @hz, align 4
  %182 = sdiv i32 500000, %181
  %183 = call i32 @min(i32 %180, i32 %182)
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %179, %168
  %185 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %186 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 (...) @ACPI_ENABLE_IRQS()
  br label %191

191:                                              ; preds = %189, %184
  %192 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %193 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %194, 3
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %195, %196
  %198 = sdiv i32 %197, 4
  %199 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %200 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %302

201:                                              ; preds = %118
  %202 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %203 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @ACPI_STATE_C3, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %212, label %207

207:                                              ; preds = %201
  %208 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %209 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %207, %201
  %213 = load i32, i32* @cpu_quirks, align 4
  %214 = load i32, i32* @CPU_QUIRK_NO_BM_CTRL, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %219 = call i32 @AcpiWriteBitRegister(i32 %218, i32 1)
  %220 = load i32, i32* @ACPI_BITREG_BUS_MASTER_RLD, align 4
  %221 = call i32 @AcpiWriteBitRegister(i32 %220, i32 1)
  br label %224

222:                                              ; preds = %212
  %223 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  br label %224

224:                                              ; preds = %222, %217
  br label %225

225:                                              ; preds = %224, %207
  %226 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %227 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @ACPI_STATE_C3, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 @AcpiGetTimer(i32* %6)
  store i32 0, i32* %5, align 4
  br label %235

233:                                              ; preds = %225
  store i32 0, i32* %6, align 4
  %234 = call i32 (...) @cpu_ticks()
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %237 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %242 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @acpi_cpu_idle_mwait(i32 %243)
  br label %250

245:                                              ; preds = %235
  %246 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %247 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @CPU_GET_REG(i32* %248, i32 1)
  br label %250

250:                                              ; preds = %245, %240
  %251 = call i32 @AcpiGetTimer(i32* %7)
  %252 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %253 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @ACPI_STATE_C3, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = call i32 @AcpiGetTimer(i32* %7)
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @AcpiGetTimerDuration(i32 %259, i32 %260, i32* %7)
  br label %269

262:                                              ; preds = %250
  %263 = call i32 (...) @cpu_ticks()
  %264 = load i32, i32* %5, align 4
  %265 = sub nsw i32 %263, %264
  %266 = shl i32 %265, 20
  %267 = call i32 (...) @cpu_tickrate()
  %268 = sdiv i32 %266, %267
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %262, %257
  %270 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %271 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @ACPI_STATE_C3, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %280, label %275

275:                                              ; preds = %269
  %276 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %277 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %275, %269
  %281 = load i32, i32* @cpu_quirks, align 4
  %282 = load i32, i32* @CPU_QUIRK_NO_BM_CTRL, align 4
  %283 = and i32 %281, %282
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %287 = call i32 @AcpiWriteBitRegister(i32 %286, i32 0)
  %288 = load i32, i32* @ACPI_BITREG_BUS_MASTER_RLD, align 4
  %289 = call i32 @AcpiWriteBitRegister(i32 %288, i32 0)
  br label %290

290:                                              ; preds = %285, %280, %275
  %291 = call i32 (...) @ACPI_ENABLE_IRQS()
  %292 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %293 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %294, 3
  %296 = load i32, i32* %7, align 4
  %297 = call i32 @PM_USEC(i32 %296)
  %298 = add nsw i32 %295, %297
  %299 = sdiv i32 %298, 4
  %300 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %301 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %290, %191, %26, %20
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @acpi_cpu_c1(...) #1

declare dso_local i64 @is_idle_disabled(%struct.acpi_cpu_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @AcpiReadBitRegister(i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiWriteBitRegister(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cpu_ticks(...) #1

declare dso_local i32 @CPU_GET_REG(i32*, i32) #1

declare dso_local i32 @acpi_cpu_idle_mwait(i32) #1

declare dso_local i32 @cpu_tickrate(...) #1

declare dso_local i32 @ACPI_ENABLE_IRQS(...) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i32 @AcpiGetTimer(i32*) #1

declare dso_local i32 @AcpiGetTimerDuration(i32, i32, i32*) #1

declare dso_local i32 @PM_USEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
