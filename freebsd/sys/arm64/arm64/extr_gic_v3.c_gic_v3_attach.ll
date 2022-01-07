; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i32, i32, i8*, %struct.TYPE_4__*, i32, i32**, %struct.TYPE_3__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.intr_irqsrc, i32, i32 }
%struct.intr_irqsrc = type { i32 }
%struct.TYPE_3__ = type { i32, i32** }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GICv3 lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@M_GIC_V3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GICD_TYPER = common dso_local global i32 0, align 4
@GIC_I_NUM_MAX = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@INTR_ISRCF_IPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s,i%u\00", align 1
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@GIC_LAST_PPI = common dso_local global i64 0, align 8
@INTR_ISRCF_PPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s,p%u\00", align 1
@GIC_FIRST_PPI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s,s%u\00", align 1
@GIC_FIRST_SPI = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@GICD_PIDR2 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"SPIs: %u, IDs: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gic_v3_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gic_v3_softc*, align 8
  %5 = alloca i32 (%struct.gic_v3_softc*)**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.intr_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.gic_v3_softc* @device_get_softc(i32 %13)
  store %struct.gic_v3_softc* %14, %struct.gic_v3_softc** %4, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %17 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %20 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %22 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %21, i32 0, i32 8
  %23 = load i32, i32* @MTX_SPIN, align 4
  %24 = call i32 @mtx_init(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %26 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_GIC_V3, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call i8* @malloc(i32 %32, i32 %33, i32 %34)
  %36 = bitcast i8* %35 to i32**
  %37 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %38 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %37, i32 0, i32 5
  store i32** %36, i32*** %38, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %70, %1
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %42 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %40, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = call i32* @bus_alloc_resource_any(i32 %49, i32 %50, i32* %7, i32 %51)
  %53 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %54 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %53, i32 0, i32 5
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* %52, i32** %58, align 8
  %59 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %60 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %59, i32 0, i32 5
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %290

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %39

75:                                               ; preds = %39
  %76 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %77 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %76, i32 0, i32 5
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %82 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %81, i32 0, i32 7
  store i32* %80, i32** %82, align 8
  %83 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %84 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @M_GIC_V3, align 4
  %91 = load i32, i32* @M_WAITOK, align 4
  %92 = call i8* @malloc(i32 %89, i32 %90, i32 %91)
  %93 = bitcast i8* %92 to i32**
  %94 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %95 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32** %93, i32*** %96, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %119, %75
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %100 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %98, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %97
  %106 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %107 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %106, i32 0, i32 5
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %114 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  store i32* %112, i32** %118, align 8
  br label %119

119:                                              ; preds = %105
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %126 = load i32, i32* @GICD_TYPER, align 4
  %127 = call i8* @gic_d_read(%struct.gic_v3_softc* %125, i32 4, i32 %126)
  store i8* %127, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @GICD_TYPER_I_NUM(i8* %128)
  %130 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %131 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %133 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GIC_I_NUM_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %124
  %138 = load i32, i32* @GIC_I_NUM_MAX, align 4
  %139 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %140 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %124
  %142 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %143 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = mul i64 24, %145
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @M_GIC_V3, align 4
  %149 = load i32, i32* @M_WAITOK, align 4
  %150 = load i32, i32* @M_ZERO, align 4
  %151 = or i32 %149, %150
  %152 = call i8* @malloc(i32 %147, i32 %148, i32 %151)
  %153 = bitcast i8* %152 to %struct.TYPE_4__*
  %154 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %155 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %154, i32 0, i32 3
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %155, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i8* @device_get_nameunit(i32 %156)
  store i8* %157, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %158

158:                                              ; preds = %244, %141
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %161 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = icmp ult i64 %159, %163
  br i1 %164, label %165, label %247

165:                                              ; preds = %158
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %168 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %167, i32 0, i32 3
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i64 %166, i64* %172, align 8
  %173 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %174 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %175 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  store i32 %173, i32* %179, align 8
  %180 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %181 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %182 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %181, i32 0, i32 3
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  store i32 %180, i32* %186, align 4
  %187 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %188 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %187, i32 0, i32 3
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store %struct.intr_irqsrc* %192, %struct.intr_irqsrc** %12, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* @GIC_LAST_SGI, align 8
  %195 = icmp ule i64 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %165
  %197 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %12, align 8
  %198 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %199 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @INTR_ISRCF_IPI, align 4
  %202 = load i8*, i8** %11, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @GIC_FIRST_SGI, align 8
  %205 = sub i64 %203, %204
  %206 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %197, i32 %200, i32 %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %202, i64 %205)
  store i32 %206, i32* %8, align 4
  br label %233

207:                                              ; preds = %165
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* @GIC_LAST_PPI, align 8
  %210 = icmp ule i64 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %207
  %212 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %12, align 8
  %213 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %214 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @INTR_ISRCF_PPI, align 4
  %217 = load i8*, i8** %11, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* @GIC_FIRST_PPI, align 8
  %220 = sub i64 %218, %219
  %221 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %212, i32 %215, i32 %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %217, i64 %220)
  store i32 %221, i32* %8, align 4
  br label %232

222:                                              ; preds = %207
  %223 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %12, align 8
  %224 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %225 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = load i64, i64* %10, align 8
  %229 = load i64, i64* @GIC_FIRST_SPI, align 8
  %230 = sub i64 %228, %229
  %231 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %223, i32 %226, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %227, i64 %230)
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %222, %211
  br label %233

233:                                              ; preds = %232, %196
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %238 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %237, i32 0, i32 3
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = load i32, i32* @M_DEVBUF, align 4
  %241 = call i32 @free(%struct.TYPE_4__* %239, i32 %240)
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %2, align 4
  br label %290

243:                                              ; preds = %233
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %10, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %10, align 8
  br label %158

247:                                              ; preds = %158
  %248 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %249 = load i32, i32* @GICD_PIDR2, align 4
  %250 = call i8* @gic_d_read(%struct.gic_v3_softc* %248, i32 4, i32 %249)
  %251 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %252 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %251, i32 0, i32 2
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = call i32 @GICD_TYPER_IDBITS(i8* %253)
  %255 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %256 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load i64, i64* @bootverbose, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %247
  %260 = load i32, i32* %3, align 4
  %261 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %262 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %266 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 1, %267
  %269 = sub nsw i32 %268, 1
  %270 = call i32 @device_printf(i32 %260, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %264, i32 %269)
  br label %271

271:                                              ; preds = %259, %247
  store i32 (%struct.gic_v3_softc*)** bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_primary_init to i32 (%struct.gic_v3_softc*)**), i32 (%struct.gic_v3_softc*)*** %5, align 8
  br label %272

272:                                              ; preds = %286, %271
  %273 = load i32 (%struct.gic_v3_softc*)**, i32 (%struct.gic_v3_softc*)*** %5, align 8
  %274 = load i32 (%struct.gic_v3_softc*)*, i32 (%struct.gic_v3_softc*)** %273, align 8
  %275 = icmp ne i32 (%struct.gic_v3_softc*)* %274, null
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load i32 (%struct.gic_v3_softc*)**, i32 (%struct.gic_v3_softc*)*** %5, align 8
  %278 = load i32 (%struct.gic_v3_softc*)*, i32 (%struct.gic_v3_softc*)** %277, align 8
  %279 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %280 = call i32 %278(%struct.gic_v3_softc* %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %276
  %284 = load i32, i32* %8, align 4
  store i32 %284, i32* %2, align 4
  br label %290

285:                                              ; preds = %276
  br label %286

286:                                              ; preds = %285
  %287 = load i32 (%struct.gic_v3_softc*)**, i32 (%struct.gic_v3_softc*)*** %5, align 8
  %288 = getelementptr inbounds i32 (%struct.gic_v3_softc*)*, i32 (%struct.gic_v3_softc*)** %287, i32 1
  store i32 (%struct.gic_v3_softc*)** %288, i32 (%struct.gic_v3_softc*)*** %5, align 8
  br label %272

289:                                              ; preds = %272
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %289, %283, %236, %67
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @gic_d_read(%struct.gic_v3_softc*, i32, i32) #1

declare dso_local i32 @GICD_TYPER_I_NUM(i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(%struct.intr_irqsrc*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @GICD_TYPER_IDBITS(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i32) #1

declare dso_local i32 @gic_v3_primary_init(%struct.gic_v3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
