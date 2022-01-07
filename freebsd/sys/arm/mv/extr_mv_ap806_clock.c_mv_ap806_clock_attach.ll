; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_clock.c_mv_ap806_clock_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_clock.c_mv_ap806_clock_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.mv_ap806_clock_softc = type { i32*, i32 }
%struct.clkdom = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"cannot get syscon for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot guess clock freq with reg %x\0A\00", align 1
@ap806_clk_cluster_0 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ap806_clk_cluster_1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ap806_clk_fixed = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ap806_clk_mss = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ap806_clk_sdio = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_ap806_clock_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_clock_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_ap806_clock_softc*, align 8
  %5 = alloca %struct.clkdom*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mv_ap806_clock_softc* @device_get_softc(i32 %8)
  store %struct.mv_ap806_clock_softc* %9, %struct.mv_ap806_clock_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mv_ap806_clock_softc*, %struct.mv_ap806_clock_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mv_ap806_clock_softc, %struct.mv_ap806_clock_softc* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mv_ap806_clock_softc*, %struct.mv_ap806_clock_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mv_ap806_clock_softc, %struct.mv_ap806_clock_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mv_ap806_clock_softc*, %struct.mv_ap806_clock_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mv_ap806_clock_softc, %struct.mv_ap806_clock_softc* %16, i32 0, i32 0
  %18 = call i64 @SYSCON_GET_HANDLE(i32 %15, i32** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.mv_ap806_clock_softc*, %struct.mv_ap806_clock_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mv_ap806_clock_softc, %struct.mv_ap806_clock_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %20
  %30 = load %struct.mv_ap806_clock_softc*, %struct.mv_ap806_clock_softc** %4, align 8
  %31 = call i32 @RD4(%struct.mv_ap806_clock_softc* %30, i32 1024)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 31
  switch i32 %33, label %38 [
    i32 0, label %34
    i32 1, label %34
    i32 6, label %35
    i32 13, label %36
    i32 20, label %37
  ]

34:                                               ; preds = %29, %29
  store i8* inttoptr (i64 2000000000 to i8*), i8** %6, align 8
  br label %44

35:                                               ; preds = %29
  store i8* inttoptr (i64 1800000000 to i8*), i8** %6, align 8
  br label %44

36:                                               ; preds = %29
  store i8* inttoptr (i64 1600000000 to i8*), i8** %6, align 8
  br label %44

37:                                               ; preds = %29
  store i8* inttoptr (i64 1333000000 to i8*), i8** %6, align 8
  br label %44

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 31
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %37, %36, %35, %34
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ap806_clk_cluster_0, i32 0, i32 0), align 8
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ap806_clk_cluster_1, i32 0, i32 0), align 8
  %47 = load i32, i32* %3, align 4
  %48 = call %struct.clkdom* @clkdom_create(i32 %47)
  store %struct.clkdom* %48, %struct.clkdom** %5, align 8
  %49 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %50 = call i32 @clknode_fixed_register(%struct.clkdom* %49, %struct.TYPE_7__* @ap806_clk_cluster_0)
  %51 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %52 = call i32 @clknode_fixed_register(%struct.clkdom* %51, %struct.TYPE_7__* @ap806_clk_cluster_1)
  %53 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %54 = call i32 @clknode_fixed_register(%struct.clkdom* %53, %struct.TYPE_7__* @ap806_clk_fixed)
  %55 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %56 = call i32 @clknode_fixed_register(%struct.clkdom* %55, %struct.TYPE_7__* @ap806_clk_mss)
  %57 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %58 = call i32 @clknode_fixed_register(%struct.clkdom* %57, %struct.TYPE_7__* @ap806_clk_sdio)
  %59 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %60 = call i32 @clkdom_finit(%struct.clkdom* %59)
  %61 = load i64, i64* @bootverbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %44
  %64 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %65 = call i32 @clkdom_dump(%struct.clkdom* %64)
  br label %66

66:                                               ; preds = %63, %44
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %38, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.mv_ap806_clock_softc* @device_get_softc(i32) #1

declare dso_local i64 @SYSCON_GET_HANDLE(i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @RD4(%struct.mv_ap806_clock_softc*, i32) #1

declare dso_local %struct.clkdom* @clkdom_create(i32) #1

declare dso_local i32 @clknode_fixed_register(%struct.clkdom*, %struct.TYPE_7__*) #1

declare dso_local i32 @clkdom_finit(%struct.clkdom*) #1

declare dso_local i32 @clkdom_dump(%struct.clkdom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
