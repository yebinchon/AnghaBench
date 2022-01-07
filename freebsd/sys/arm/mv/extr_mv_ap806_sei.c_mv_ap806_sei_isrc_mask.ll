; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_isrc_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_isrc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ap806_sei_softc = type { i32 }
%struct.mv_ap806_sei_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*, i64)* @mv_ap806_sei_isrc_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc* %0, %struct.mv_ap806_sei_irqsrc* %1, i64 %2) #0 {
  %4 = alloca %struct.mv_ap806_sei_softc*, align 8
  %5 = alloca %struct.mv_ap806_sei_irqsrc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mv_ap806_sei_softc* %0, %struct.mv_ap806_sei_softc** %4, align 8
  store %struct.mv_ap806_sei_irqsrc* %1, %struct.mv_ap806_sei_irqsrc** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %5, align 8
  %10 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GICP_SEMR_BIT(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %14 = call i32 @MV_AP806_SEI_LOCK(%struct.mv_ap806_sei_softc* %13)
  %15 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %16 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %5, align 8
  %17 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GICP_SEMR(i32 %18)
  %20 = call i64 @RD4(%struct.mv_ap806_sei_softc* %15, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %38 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %5, align 8
  %39 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GICP_SEMR(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @WR4(%struct.mv_ap806_sei_softc* %37, i32 %41, i64 %42)
  %44 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %45 = call i32 @MV_AP806_SEI_UNLOCK(%struct.mv_ap806_sei_softc* %44)
  ret void
}

declare dso_local i32 @GICP_SEMR_BIT(i32) #1

declare dso_local i32 @MV_AP806_SEI_LOCK(%struct.mv_ap806_sei_softc*) #1

declare dso_local i64 @RD4(%struct.mv_ap806_sei_softc*, i32) #1

declare dso_local i32 @GICP_SEMR(i32) #1

declare dso_local i32 @WR4(%struct.mv_ap806_sei_softc*, i32, i64) #1

declare dso_local i32 @MV_AP806_SEI_UNLOCK(%struct.mv_ap806_sei_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
