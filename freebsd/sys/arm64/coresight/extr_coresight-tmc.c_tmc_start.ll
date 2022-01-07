; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_softc = type { i32 }

@TMC_CTL = common dso_local global i32 0, align 4
@CTL_TRACECAPTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Not enabled\0A\00", align 1
@TMC_STS = common dso_local global i32 0, align 4
@STS_TMCREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tmc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tmc_softc* @device_get_softc(i32 %6)
  store %struct.tmc_softc* %7, %struct.tmc_softc** %4, align 8
  %8 = load %struct.tmc_softc*, %struct.tmc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TMC_CTL, align 4
  %12 = call i32 @bus_read_4(i32 %10, i32 %11)
  %13 = load i32, i32* @CTL_TRACECAPTEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.tmc_softc*, %struct.tmc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TMC_CTL, align 4
  %22 = load i32, i32* @CTL_TRACECAPTEN, align 4
  %23 = call i32 @bus_write_4(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tmc_softc*, %struct.tmc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TMC_CTL, align 4
  %28 = call i32 @bus_read_4(i32 %26, i32 %27)
  %29 = load i32, i32* @CTL_TRACECAPTEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %17
  br label %35

35:                                               ; preds = %41, %34
  %36 = load %struct.tmc_softc*, %struct.tmc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TMC_STS, align 4
  %40 = call i32 @bus_read_4(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @STS_TMCREADY, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %35, label %46

46:                                               ; preds = %41
  %47 = load %struct.tmc_softc*, %struct.tmc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TMC_CTL, align 4
  %51 = call i32 @bus_read_4(i32 %49, i32 %50)
  %52 = load i32, i32* @CTL_TRACECAPTEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %46
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
