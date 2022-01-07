; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_queue_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { i32 }

@ITS_CMDQ_SIZE = common dso_local global i32 0, align 4
@GITS_CREADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gicv3_its_softc*)* @its_cmd_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_cmd_queue_full(%struct.gicv3_its_softc* %0) #0 {
  %2 = alloca %struct.gicv3_its_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.gicv3_its_softc* %0, %struct.gicv3_its_softc** %2, align 8
  %5 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %6 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @ITS_CMDQ_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = urem i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %15 = load i32, i32* @GITS_CREADR, align 4
  %16 = call i32 @gic_its_read_4(%struct.gicv3_its_softc* %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @gic_its_read_4(%struct.gicv3_its_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
