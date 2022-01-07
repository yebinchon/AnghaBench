; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_interrupts_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_interrupts_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pruss_softc = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Interrupt chain not fully configured, not possible to enable\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ti_pruss_cdevirq = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pruss%d.irq%d\00", align 1
@PRUSS_INTC_HIEISR = common dso_local global i32 0, align 4
@PRUSS_INTC_HIDISR = common dso_local global i32 0, align 4
@PRUSS_INTC_EISR = common dso_local global i32 0, align 4
@PRUSS_INTC_EICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pruss_softc*, i64, i32)* @ti_pruss_interrupts_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pruss_interrupts_enable(%struct.ti_pruss_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_pruss_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_pruss_softc* %0, %struct.ti_pruss_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %20, %11
  %30 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %146

37:                                               ; preds = %20, %3
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %38, i32* %44, align 8
  %45 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %37
  %54 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = call i32 @destroy_dev(%struct.TYPE_11__* %60)
  %62 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %67, align 8
  br label %68

68:                                               ; preds = %53, %37
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %68
  %72 = load i32, i32* @UID_ROOT, align 4
  %73 = load i32, i32* @GID_WHEEL, align 4
  %74 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_get_unit(i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = call %struct.TYPE_11__* @make_dev(i32* @ti_pruss_cdevirq, i32 0, i32 %72, i32 %73, i32 384, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %80)
  %82 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %83 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %87, align 8
  %88 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %91
  %93 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %100, align 8
  %101 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %71, %68
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @PRUSS_INTC_HIEISR, align 4
  br label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @PRUSS_INTC_HIDISR, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %8, align 4
  %118 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %121 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %118, i32 %119, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* @PRUSS_INTC_EISR, align 4
  br label %134

132:                                              ; preds = %116
  %133 = load i32, i32* @PRUSS_INTC_EICR, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %8, align 4
  %136 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %139 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %136, i32 %137, i32 %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %134, %29
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @destroy_dev(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ti_pruss_reg_write(%struct.ti_pruss_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
