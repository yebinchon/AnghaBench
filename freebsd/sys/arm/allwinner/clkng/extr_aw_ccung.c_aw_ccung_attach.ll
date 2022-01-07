; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccung_softc = type { i32, i64, i32*, i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@aw_ccung_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot create clkdom\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot finalize clkdom initialization\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_ccung_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_ccung_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aw_ccung_softc* @device_get_softc(i32 %6)
  store %struct.aw_ccung_softc* %7, %struct.aw_ccung_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @aw_ccung_spec, align 4
  %13 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %13, i32 0, i32 6
  %15 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %256

21:                                               ; preds = %1
  %22 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %23, i32 %25, i32* null, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32* @clkdom_create(i32 %28)
  %30 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %33 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %21
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %210, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %42 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %213

45:                                               ; preds = %39
  %46 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %47 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %209 [
    i32 128, label %54
    i32 134, label %55
    i32 139, label %69
    i32 138, label %83
    i32 133, label %97
    i32 132, label %111
    i32 136, label %125
    i32 129, label %139
    i32 137, label %153
    i32 135, label %167
    i32 130, label %181
    i32 131, label %195
  ]

54:                                               ; preds = %45
  br label %209

55:                                               ; preds = %45
  %56 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %57 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %60 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clknode_mux_register(i32* %58, i32 %67)
  br label %209

69:                                               ; preds = %45
  %70 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %71 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %74 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clknode_div_register(i32* %72, i32 %81)
  br label %209

83:                                               ; preds = %45
  %84 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %85 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %88 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @clknode_fixed_register(i32* %86, i32 %95)
  br label %209

97:                                               ; preds = %45
  %98 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %99 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %102 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @aw_clk_nkmp_register(i32* %100, i32 %109)
  br label %209

111:                                              ; preds = %45
  %112 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %113 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %116 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @aw_clk_nm_register(i32* %114, i32 %123)
  br label %209

125:                                              ; preds = %45
  %126 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %127 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %130 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @aw_clk_m_register(i32* %128, i32 %137)
  br label %209

139:                                              ; preds = %45
  %140 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %141 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %144 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %143, i32 0, i32 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @aw_clk_prediv_mux_register(i32* %142, i32 %151)
  br label %209

153:                                              ; preds = %45
  %154 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %155 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %158 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %157, i32 0, i32 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @aw_clk_frac_register(i32* %156, i32 %165)
  br label %209

167:                                              ; preds = %45
  %168 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %169 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %172 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %171, i32 0, i32 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @aw_clk_mipi_register(i32* %170, i32 %179)
  br label %209

181:                                              ; preds = %45
  %182 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %183 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %186 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %185, i32 0, i32 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @aw_clk_np_register(i32* %184, i32 %193)
  br label %209

195:                                              ; preds = %45
  %196 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %197 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %200 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %199, i32 0, i32 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @aw_clk_nmm_register(i32* %198, i32 %207)
  br label %209

209:                                              ; preds = %45, %195, %181, %167, %153, %139, %125, %111, %97, %83, %69, %55, %54
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %39

213:                                              ; preds = %39
  %214 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %215 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %220 = call i32 @aw_ccung_register_gates(%struct.aw_ccung_softc* %219)
  br label %221

221:                                              ; preds = %218, %213
  %222 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %223 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = call i64 @clkdom_finit(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %221
  %230 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %231 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @clkdom_xlock(i32* %232)
  %234 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %235 = call i32 @aw_ccung_init_clocks(%struct.aw_ccung_softc* %234)
  %236 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %237 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @clkdom_unlock(i32* %238)
  %240 = load i64, i64* @bootverbose, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %229
  %243 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %244 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @clkdom_dump(i32* %245)
  br label %247

247:                                              ; preds = %242, %229
  %248 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %4, align 8
  %249 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @hwreset_register_ofw_provider(i32 %253)
  br label %255

255:                                              ; preds = %252, %247
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %255, %17
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.aw_ccung_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @clkdom_create(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @clknode_mux_register(i32*, i32) #1

declare dso_local i32 @clknode_div_register(i32*, i32) #1

declare dso_local i32 @clknode_fixed_register(i32*, i32) #1

declare dso_local i32 @aw_clk_nkmp_register(i32*, i32) #1

declare dso_local i32 @aw_clk_nm_register(i32*, i32) #1

declare dso_local i32 @aw_clk_m_register(i32*, i32) #1

declare dso_local i32 @aw_clk_prediv_mux_register(i32*, i32) #1

declare dso_local i32 @aw_clk_frac_register(i32*, i32) #1

declare dso_local i32 @aw_clk_mipi_register(i32*, i32) #1

declare dso_local i32 @aw_clk_np_register(i32*, i32) #1

declare dso_local i32 @aw_clk_nmm_register(i32*, i32) #1

declare dso_local i32 @aw_ccung_register_gates(%struct.aw_ccung_softc*) #1

declare dso_local i64 @clkdom_finit(i32*) #1

declare dso_local i32 @clkdom_xlock(i32*) #1

declare dso_local i32 @aw_ccung_init_clocks(%struct.aw_ccung_softc*) #1

declare dso_local i32 @clkdom_unlock(i32*) #1

declare dso_local i32 @clkdom_dump(i32*) #1

declare dso_local i32 @hwreset_register_ofw_provider(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
