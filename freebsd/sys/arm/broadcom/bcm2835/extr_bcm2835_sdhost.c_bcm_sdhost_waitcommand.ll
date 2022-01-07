; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_bcm_sdhost_waitcommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_bcm_sdhost_waitcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sdhost_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@HC_COMMAND = common dso_local global i32 0, align 4
@HC_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sdhost_softc*)* @bcm_sdhost_waitcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sdhost_waitcommand(%struct.bcm_sdhost_softc* %0) #0 {
  %2 = alloca %struct.bcm_sdhost_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_sdhost_softc* %0, %struct.bcm_sdhost_softc** %2, align 8
  store i32 1000, i32* %3, align 4
  %4 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bcm_sdhost_softc, %struct.bcm_sdhost_softc* %4, i32 0, i32 0
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %2, align 8
  %10 = load i32, i32* @HC_COMMAND, align 4
  %11 = call i32 @RD4(%struct.bcm_sdhost_softc* %9, i32 %10)
  %12 = load i32, i32* @HC_CMD_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i1 [ false, %8 ], [ %18, %15 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @DELAY(i32 100)
  br label %8

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  ret i32 %27
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @RD4(%struct.bcm_sdhost_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
