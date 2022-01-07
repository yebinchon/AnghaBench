; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (i32)*, i32 }
%struct.gicv3_its_softc = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32**, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@GIC_FIRST_LPI = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GITS_IIDR = common dso_local global i32 0, align 4
@its_quirks = common dso_local global %struct.TYPE_5__* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Applying %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ITS device lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ITS cmd lock\00", align 1
@MAXMEMDOM = common dso_local global i32 0, align 4
@cpuset_domain = common dso_local global i32* null, align 8
@all_cpus = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4
@M_GICV3_ITS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GITS_CTLR = common dso_local global i32 0, align 4
@GITS_CTLR_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"GICv3 ITS IRQs\00", align 1
@M_FIRSTFIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gicv3_its_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gicv3_its_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.gicv3_its_softc* @device_get_softc(i32 %12)
  store %struct.gicv3_its_softc* %13, %struct.gicv3_its_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @gicv3_get_nirqs(i32 %14)
  %16 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %17 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GIC_FIRST_LPI, align 4
  %19 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %20 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  %23 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %24 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %28 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i32* @bus_alloc_resource_any(i32 %31, i32 %32, i32* %10, i32 %33)
  %35 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %36 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %35, i32 0, i32 9
  store i32* %34, i32** %36, align 8
  %37 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %38 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %245

45:                                               ; preds = %1
  %46 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %47 = load i32, i32* @GITS_IIDR, align 4
  %48 = call i32 @gic_its_read_4(%struct.gicv3_its_softc* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %92, %45
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @its_quirks, align 8
  %52 = call i32 @nitems(%struct.TYPE_5__* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @its_quirks, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %55, %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @its_quirks, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %54
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @its_quirks, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @its_quirks, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32 (i32)*, i32 (i32)** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 %88(i32 %89)
  br label %95

91:                                               ; preds = %54
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %49

95:                                               ; preds = %82, %49
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %98 = call i32 @gicv3_its_table_init(i32 %96, %struct.gicv3_its_softc* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %245

103:                                              ; preds = %95
  %104 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %105 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %104, i32 0, i32 8
  %106 = load i32, i32* @MTX_SPIN, align 4
  %107 = call i32 @mtx_init(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %106)
  %108 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %109 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %108, i32 0, i32 7
  %110 = load i32, i32* @MTX_SPIN, align 4
  %111 = call i32 @mtx_init(i32* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %110)
  %112 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %113 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %112, i32 0, i32 6
  %114 = call i32 @CPU_ZERO(i32* %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i64 @bus_get_domain(i32 %115, i32* %7)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MAXMEMDOM, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32*, i32** @cpuset_domain, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %128 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %127, i32 0, i32 6
  %129 = call i32 @CPU_COPY(i32* %126, i32* %128)
  br label %130

130:                                              ; preds = %122, %118
  br label %135

131:                                              ; preds = %103
  %132 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %133 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %132, i32 0, i32 6
  %134 = call i32 @CPU_COPY(i32* @all_cpus, i32* %133)
  br label %135

135:                                              ; preds = %131, %130
  %136 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %137 = call i32 @gicv3_its_cmdq_init(%struct.gicv3_its_softc* %136)
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %169, %135
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @mp_maxid, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %145 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %144, i32 0, i32 6
  %146 = call i64 @CPU_ISSET(i32 %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load i32, i32* @M_GICV3_ITS, align 4
  %150 = load i32, i32* @M_WAITOK, align 4
  %151 = load i32, i32* @M_ZERO, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @malloc(i32 4, i32 %149, i32 %152)
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %156 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %155, i32 0, i32 5
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  store i32* %154, i32** %160, align 8
  br label %168

161:                                              ; preds = %142
  %162 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %163 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %162, i32 0, i32 5
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %161, %148
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %138

172:                                              ; preds = %138
  %173 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %174 = load i32, i32* @GITS_CTLR, align 4
  %175 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %176 = load i32, i32* @GITS_CTLR, align 4
  %177 = call i32 @gic_its_read_4(%struct.gicv3_its_softc* %175, i32 %176)
  %178 = load i32, i32* @GITS_CTLR_EN, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @gic_its_write_4(%struct.gicv3_its_softc* %173, i32 %174, i32 %179)
  %181 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %182 = call i32 @gicv3_its_conftable_init(%struct.gicv3_its_softc* %181)
  %183 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %184 = call i32 @gicv3_its_pendtables_init(%struct.gicv3_its_softc* %183)
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %187 = call i32 @its_init_cpu(i32 %185, %struct.gicv3_its_softc* %186)
  %188 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %189 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %188, i32 0, i32 4
  %190 = call i32 @TAILQ_INIT(i32* %189)
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @gicv3_get_nirqs(i32 %191)
  %193 = load i32, i32* @M_FIRSTFIT, align 4
  %194 = load i32, i32* @M_WAITOK, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @vmem_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %192, i32 1, i32 1, i32 %195)
  %197 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %198 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %200 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = mul i64 8, %202
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* @M_GICV3_ITS, align 4
  %206 = load i32, i32* @M_WAITOK, align 4
  %207 = load i32, i32* @M_ZERO, align 4
  %208 = or i32 %206, %207
  %209 = call i8* @malloc(i32 %204, i32 %205, i32 %208)
  %210 = bitcast i8* %209 to %struct.TYPE_4__*
  %211 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %212 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %211, i32 0, i32 2
  store %struct.TYPE_4__* %210, %struct.TYPE_4__** %212, align 8
  %213 = load i32, i32* %3, align 4
  %214 = call i8* @device_get_nameunit(i32 %213)
  store i8* %214, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %241, %172
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %218 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %244

221:                                              ; preds = %215
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %224 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %223, i32 0, i32 2
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  store i32 %222, i32* %229, align 4
  %230 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %231 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %230, i32 0, i32 2
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i32, i32* %3, align 4
  %238 = load i8*, i8** %5, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @intr_isrc_register(i32* %236, i32 %237, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %238, i32 %239)
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %221
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %215

244:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %244, %101, %41
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @gicv3_get_nirqs(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @gic_its_read_4(%struct.gicv3_its_softc*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @gicv3_its_table_init(i32, %struct.gicv3_its_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @bus_get_domain(i32, i32*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @gicv3_its_cmdq_init(%struct.gicv3_its_softc*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @gic_its_write_4(%struct.gicv3_its_softc*, i32, i32) #1

declare dso_local i32 @gicv3_its_conftable_init(%struct.gicv3_its_softc*) #1

declare dso_local i32 @gicv3_its_pendtables_init(%struct.gicv3_its_softc*) #1

declare dso_local i32 @its_init_cpu(i32, %struct.gicv3_its_softc*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
