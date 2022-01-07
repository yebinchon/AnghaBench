; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpsw_softc = type { i32*, i32*, i32 }

@CPSW_INTR_COUNT = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cpsw_intr_cb = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*)* @cpsw_intr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_intr_attach(%struct.cpsw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CPSW_INTR_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INTR_TYPE_NET, align 4
  %21 = load i32, i32* @INTR_MPSAFE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_intr_cb, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %30 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @bus_setup_intr(i32 %12, i32 %19, i32 %22, i32* null, i32 %28, %struct.cpsw_softc* %29, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %44

39:                                               ; preds = %9
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.cpsw_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
