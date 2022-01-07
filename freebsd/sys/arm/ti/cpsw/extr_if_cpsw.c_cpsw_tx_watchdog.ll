; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpsw_tx_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_tx_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpsw_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cpsw_softc*
  store %struct.cpsw_softc* %5, %struct.cpsw_softc** %3, align 8
  %6 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %7 = call i32 @CPSW_TX_LOCK(%struct.cpsw_softc* %6)
  %8 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %70

23:                                               ; preds = %13
  %24 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %29 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %35 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %69

37:                                               ; preds = %23
  %38 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %39 = call i64 @cpsw_tx_dequeue(%struct.cpsw_softc* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %43 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %68

45:                                               ; preds = %37
  %46 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %47 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %52 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %58 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %61 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %66 = call i32 @cpsw_tx_watchdog_full_reset(%struct.cpsw_softc* %65)
  br label %67

67:                                               ; preds = %56, %45
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %19
  %71 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %72 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %76 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  %78 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %79 = call i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc* %78)
  %80 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %81 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* @hz, align 4
  %84 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %85 = call i32 @callout_reset(i32* %82, i32 %83, void (i8*)* @cpsw_tx_watchdog, %struct.cpsw_softc* %84)
  ret void
}

declare dso_local i32 @CPSW_TX_LOCK(%struct.cpsw_softc*) #1

declare dso_local i64 @cpsw_tx_dequeue(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_tx_watchdog_full_reset(%struct.cpsw_softc*) #1

declare dso_local i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.cpsw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
