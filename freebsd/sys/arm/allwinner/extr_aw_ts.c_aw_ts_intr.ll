; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ts.c_aw_ts_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ts.c_aw_ts_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ts_softc = type { i32, i32, i32 }

@TP_FIFOS = common dso_local global i32 0, align 4
@TP_FIFOS_TEMP_IRQ_PENDING = common dso_local global i32 0, align 4
@TEMP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aw_ts_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_ts_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aw_ts_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.aw_ts_softc*
  store %struct.aw_ts_softc* %6, %struct.aw_ts_softc** %3, align 8
  %7 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %8 = load i32, i32* @TP_FIFOS, align 4
  %9 = call i32 @READ(%struct.aw_ts_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TP_FIFOS_TEMP_IRQ_PENDING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %16 = load i32, i32* @TEMP_DATA, align 4
  %17 = call i32 @READ(%struct.aw_ts_softc* %15, i32 %16)
  %18 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %19 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = add nsw i32 %25, 273150
  %27 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %1
  %30 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %3, align 8
  %31 = load i32, i32* @TP_FIFOS, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @WRITE(%struct.aw_ts_softc* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @READ(%struct.aw_ts_softc*, i32) #1

declare dso_local i32 @WRITE(%struct.aw_ts_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
