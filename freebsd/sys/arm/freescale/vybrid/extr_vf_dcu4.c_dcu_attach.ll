; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_dcu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_dcu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_info = type { i32, i32, i32 }
%struct.dcu_softc = type { i32*, i32*, %struct.TYPE_2__, %struct.panel_info*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@dcu_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dcu_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't get panel info\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error: failed to get the GPIO dev\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Can't attach fbd device\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to attach fbd device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dcu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcu_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.panel_info, align 4
  %5 = alloca %struct.dcu_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.dcu_softc* @device_get_softc(i32* %8)
  store %struct.dcu_softc* %9, %struct.dcu_softc** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %12 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @dcu_spec, align 4
  %15 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %16 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @bus_alloc_resources(i32* %13, i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @device_printf(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %190

24:                                               ; preds = %1
  %25 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %26 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rman_get_bustag(i32 %29)
  %31 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %32 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %34 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rman_get_bushandle(i32 %37)
  %39 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %40 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %43 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTR_TYPE_BIO, align 4
  %48 = load i32, i32* @INTR_MPSAFE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @dcu_intr, align 4
  %51 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %52 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %53 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %52, i32 0, i32 4
  %54 = call i32 @bus_setup_intr(i32* %41, i32 %46, i32 %49, i32* null, i32 %50, %struct.dcu_softc* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %24
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @device_printf(i32* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %190

61:                                               ; preds = %24
  %62 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %63 = call i64 @get_panel_info(%struct.dcu_softc* %62, %struct.panel_info* %4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @device_printf(i32* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %190

69:                                               ; preds = %61
  %70 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %71 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %70, i32 0, i32 3
  store %struct.panel_info* %4, %struct.panel_info** %71, align 8
  %72 = call i32 (...) @tcon_bypass()
  %73 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32* @devclass_get_device(i32 %73, i32 0)
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %79 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @device_printf(i32* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %190

82:                                               ; preds = %69
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %87 = call i32 @GPIO_PIN_SETFLAGS(i32* %83, i32 %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %92 = call i32 @GPIO_PIN_SET(i32* %88, i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %96 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %101 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %104 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 3
  %108 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %109 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %112 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  store i32 24, i32* %113, align 8
  %114 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %115 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  store i32 24, i32* %116, align 4
  %117 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %118 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %122 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %120, %124
  %126 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %127 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 4
  %129 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %130 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @M_DEVBUF, align 4
  %134 = load i32, i32* @M_ZERO, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = call i64 @contigmalloc(i32 %132, i32 %133, i32 %134, i32 0, i32 -1, i32 %135, i32 0)
  %137 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %138 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  store i64 %136, i64* %139, align 8
  %140 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %141 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @vtophys(i64 %143)
  %145 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %146 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 7
  store i64 %144, i64* %147, align 8
  %148 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %149 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %154 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memset(i32* %152, i32 0, i32 %156)
  %158 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %159 = call i32 @dcu_init(%struct.dcu_softc* %158)
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @device_get_nameunit(i32* %160)
  %162 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %163 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 8
  store i32 %161, i32* %164, align 8
  %165 = load i32*, i32** %3, align 8
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @device_get_unit(i32* %166)
  %168 = call i32* @device_add_child(i32* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %170 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  %171 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %172 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %82
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @device_printf(i32* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %82
  %179 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %180 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i64 @device_probe_and_attach(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.dcu_softc*, %struct.dcu_softc** %5, align 8
  %186 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @device_printf(i32* %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %184, %178
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %77, %65, %57, %20
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.dcu_softc* @device_get_softc(i32*) #1

declare dso_local i64 @bus_alloc_resources(i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32*, i32, i32, i32*, i32, %struct.dcu_softc*, i32*) #1

declare dso_local i64 @get_panel_info(%struct.dcu_softc*, %struct.panel_info*) #1

declare dso_local i32 @tcon_bypass(...) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vtophys(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dcu_init(%struct.dcu_softc*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
