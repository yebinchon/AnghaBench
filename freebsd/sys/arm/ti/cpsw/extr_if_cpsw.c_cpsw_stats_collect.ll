; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_stats_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_stats_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpsw_softc = type { i32* }

@.str = private unnamed_addr constant [38 x i8] c"Controller shadow statistics updated.\00", align 1
@CPSW_SYSCTL_COUNT = common dso_local global i32 0, align 4
@CPSW_STATS_OFFSET = common dso_local global i64 0, align 8
@cpsw_stat_sysctls = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_stats_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_stats_collect(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %5 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %6 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CPSW_SYSCTL_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %13 = load i64, i64* @CPSW_STATS_OFFSET, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_stat_sysctls, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %13, %19
  %21 = call i64 @cpsw_read_4(%struct.cpsw_softc* %12, i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %24 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %22
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %34 = load i64, i64* @CPSW_STATS_OFFSET, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_stat_sysctls, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @cpsw_write_4(%struct.cpsw_softc* %33, i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %11
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

declare dso_local i32 @CPSW_DEBUGF(%struct.cpsw_softc*, i8*) #1

declare dso_local i64 @cpsw_read_4(%struct.cpsw_softc*, i64) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
