; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i32, i32, %struct.axp2xx_reg_sc**, %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.axp2xx_reg_sc = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.axp2xx_regdef = type { i8* }
%struct.TYPE_3__ = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@axp_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't allocate device resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@axp209_pins = common dso_local global i8* null, align 8
@axp209_sensors = common dso_local global i8* null, align 8
@axp209_regdefs = common dso_local global i8* null, align 8
@axp221_pins = common dso_local global i8* null, align 8
@axp221_sensors = common dso_local global i8* null, align 8
@axp221_regdefs = common dso_local global i8* null, align 8
@M_AXP2XX_REG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@axp2xx_start = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot attach regulator %s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Regulator %s attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axp2xx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp2xx_softc*, align 8
  %5 = alloca %struct.axp2xx_reg_sc*, align 8
  %6 = alloca %struct.axp2xx_regdef*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.axp2xx_softc* @device_get_softc(i32 %10)
  store %struct.axp2xx_softc* %11, %struct.axp2xx_softc** %4, align 8
  %12 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %13 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %12, i32 0, i32 10
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %13, i32 %15, i32* null, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @axp_res_spec, align 4
  %20 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %21 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @bus_alloc_resources(i32 %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %189

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @compat_data, align 4
  %32 = call %struct.TYPE_3__* @ofw_bus_search_compatible(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %36 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %38 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %92 [
    i32 129, label %40
    i32 128, label %66
  ]

40:                                               ; preds = %29
  %41 = load i8*, i8** @axp209_pins, align 8
  %42 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %43 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @axp209_pins, align 8
  %45 = call i8* @nitems(i8* %44)
  %46 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %47 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i8* @gpiobus_attach_bus(i32 %48)
  %50 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %51 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @axp209_sensors, align 8
  %53 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %54 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @axp209_sensors, align 8
  %56 = call i8* @nitems(i8* %55)
  %57 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %58 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @axp209_regdefs, align 8
  %60 = bitcast i8* %59 to %struct.axp2xx_regdef*
  store %struct.axp2xx_regdef* %60, %struct.axp2xx_regdef** %6, align 8
  %61 = load i8*, i8** @axp209_regdefs, align 8
  %62 = call i8* @nitems(i8* %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %65 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %92

66:                                               ; preds = %29
  %67 = load i8*, i8** @axp221_pins, align 8
  %68 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %69 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @axp221_pins, align 8
  %71 = call i8* @nitems(i8* %70)
  %72 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %73 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i8* @gpiobus_attach_bus(i32 %74)
  %76 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %77 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @axp221_sensors, align 8
  %79 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %80 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @axp221_sensors, align 8
  %82 = call i8* @nitems(i8* %81)
  %83 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %84 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @axp221_regdefs, align 8
  %86 = bitcast i8* %85 to %struct.axp2xx_regdef*
  store %struct.axp2xx_regdef* %86, %struct.axp2xx_regdef** %6, align 8
  %87 = load i8*, i8** @axp221_regdefs, align 8
  %88 = call i8* @nitems(i8* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %91 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %29, %66, %40
  %93 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %94 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 8, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @M_AXP2XX_REG, align 4
  %100 = load i32, i32* @M_WAITOK, align 4
  %101 = load i32, i32* @M_ZERO, align 4
  %102 = or i32 %100, %101
  %103 = call %struct.axp2xx_reg_sc** @malloc(i32 %98, i32 %99, i32 %102)
  %104 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %105 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %104, i32 0, i32 2
  store %struct.axp2xx_reg_sc** %103, %struct.axp2xx_reg_sc*** %105, align 8
  %106 = load i32, i32* @axp2xx_start, align 4
  %107 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %108 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %112 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %115 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %114, i32 0, i32 3
  %116 = call i64 @config_intrhook_establish(%struct.TYPE_4__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %92
  %119 = load i32, i32* @ENOMEM, align 4
  store i32 %119, i32* %2, align 4
  br label %189

120:                                              ; preds = %92
  %121 = load i32, i32* %3, align 4
  %122 = call i64 @ofw_bus_get_node(i32 %121)
  %123 = call i64 @ofw_bus_find_child(i64 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %188

126:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %184, %126
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %130 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %187

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %135, i64 %137
  %139 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @ofw_bus_find_child(i64 %134, i8* %140)
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %8, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %184

145:                                              ; preds = %133
  %146 = load i32, i32* %3, align 4
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %148, i64 %150
  %152 = call %struct.axp2xx_reg_sc* @axp2xx_reg_attach(i32 %146, i64 %147, %struct.axp2xx_regdef* %151)
  store %struct.axp2xx_reg_sc* %152, %struct.axp2xx_reg_sc** %5, align 8
  %153 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %5, align 8
  %154 = icmp eq %struct.axp2xx_reg_sc* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %6, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %157, i64 %159
  %161 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  br label %184

164:                                              ; preds = %145
  %165 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %5, align 8
  %166 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %167 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %166, i32 0, i32 2
  %168 = load %struct.axp2xx_reg_sc**, %struct.axp2xx_reg_sc*** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %168, i64 %170
  store %struct.axp2xx_reg_sc* %165, %struct.axp2xx_reg_sc** %171, align 8
  %172 = load i64, i64* @bootverbose, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %164
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.axp2xx_regdef*, %struct.axp2xx_regdef** %6, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %176, i64 %178
  %180 = getelementptr inbounds %struct.axp2xx_regdef, %struct.axp2xx_regdef* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %174, %164
  br label %184

184:                                              ; preds = %183, %155, %144
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %127

187:                                              ; preds = %127
  br label %188

188:                                              ; preds = %187, %120
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %118, %25
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.axp2xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i8* @nitems(i8*) #1

declare dso_local i8* @gpiobus_attach_bus(i32) #1

declare dso_local %struct.axp2xx_reg_sc** @malloc(i32, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_4__*) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.axp2xx_reg_sc* @axp2xx_reg_attach(i32, i64, %struct.axp2xx_regdef*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
