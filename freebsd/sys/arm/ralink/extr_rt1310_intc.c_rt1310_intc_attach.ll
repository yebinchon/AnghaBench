; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_intc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_intc.c_rt1310_intc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_intc_softc = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@intc_softc = common dso_local global %struct.rt1310_intc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not alloc resources\0A\00", align 1
@RT_INTC_IECR = common dso_local global i64 0, align 8
@RT_INTC_ICCR = common dso_local global i64 0, align 8
@INTC_NIRQS = common dso_local global i32 0, align 4
@RT_INTC_SCR0 = common dso_local global i64 0, align 8
@irqdef = common dso_local global %struct.TYPE_2__* null, align 8
@RT_INTC_TRIG_SHIF = common dso_local global i32 0, align 4
@RT_INTC_SVR0 = common dso_local global i64 0, align 8
@RT_INTC_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt1310_intc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_intc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt1310_intc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.rt1310_intc_softc* @device_get_softc(i32 %7)
  store %struct.rt1310_intc_softc* %8, %struct.rt1310_intc_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** @intc_softc, align 8
  %10 = icmp ne %struct.rt1310_intc_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32 @bus_alloc_resource_any(i32 %17, i32 %18, i32* %5, i32 %19)
  %21 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %98

31:                                               ; preds = %13
  %32 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bustag(i32 %34)
  %36 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rman_get_bushandle(i32 %40)
  %42 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %43 = getelementptr inbounds %struct.rt1310_intc_softc, %struct.rt1310_intc_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  store %struct.rt1310_intc_softc* %44, %struct.rt1310_intc_softc** @intc_softc, align 8
  %45 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %46 = call i32 @rt1310_pic_attach(%struct.rt1310_intc_softc* %45)
  %47 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %48 = load i64, i64* @RT_INTC_IECR, align 8
  %49 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %47, i64 %48, i32 0)
  %50 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %51 = load i64, i64* @RT_INTC_ICCR, align 8
  %52 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %50, i64 %51, i32 -1)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %88, %31
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @INTC_NIRQS, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %59 = load i64, i64* @RT_INTC_SCR0, align 8
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irqdef, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RT_INTC_TRIG_SHIF, align 4
  %71 = shl i32 %69, %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irqdef, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %71, %77
  %79 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %58, i64 %63, i32 %78)
  %80 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %81 = load i64, i64* @RT_INTC_SVR0, align 8
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %80, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %93 = load i64, i64* @RT_INTC_ICCR, align 8
  %94 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %92, i64 %93, i32 -1)
  %95 = load %struct.rt1310_intc_softc*, %struct.rt1310_intc_softc** %4, align 8
  %96 = load i64, i64* @RT_INTC_IMR, align 8
  %97 = call i32 @intc_write_4(%struct.rt1310_intc_softc* %95, i64 %96, i32 0)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %91, %27, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.rt1310_intc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rt1310_pic_attach(%struct.rt1310_intc_softc*) #1

declare dso_local i32 @intc_write_4(%struct.rt1310_intc_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
