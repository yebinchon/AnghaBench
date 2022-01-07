; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_imx6_anatop_new_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_imx6_anatop_new_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32, i32, i32, i32 }

@BUS_PASS_CPU = common dso_local global i32 0, align 4
@BUS_PASS_ORDER_MIDDLE = common dso_local global i32 0, align 4
@bus_current_pass = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"CPU %uMHz @ %umV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @imx6_anatop_new_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_anatop_new_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @BUS_PASS_CPU, align 4
  %6 = load i32, i32* @BUS_PASS_ORDER_MIDDLE, align 4
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.imx6_anatop_softc* @device_get_softc(i32 %8)
  store %struct.imx6_anatop_softc* %9, %struct.imx6_anatop_softc** %3, align 8
  %10 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %11 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @bus_current_pass, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %20 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %22 = call i32 @cpufreq_initialize(%struct.imx6_anatop_softc* %21)
  %23 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %24 = call i32 @initialize_tempmon(%struct.imx6_anatop_softc* %23)
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %29 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %32 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %35 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %18
  br label %39

39:                                               ; preds = %38, %14, %1
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @bus_generic_new_pass(i32 %40)
  ret void
}

declare dso_local %struct.imx6_anatop_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpufreq_initialize(%struct.imx6_anatop_softc*) #1

declare dso_local i32 @initialize_tempmon(%struct.imx6_anatop_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bus_generic_new_pass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
