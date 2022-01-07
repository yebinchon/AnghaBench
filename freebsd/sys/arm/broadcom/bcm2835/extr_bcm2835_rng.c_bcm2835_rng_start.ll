; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_softc = type { i64 }

@RNG_STATUS = common dso_local global i32 0, align 4
@RND_VAL_WARM_CNT = common dso_local global i32 0, align 4
@RNG_CTRL = common dso_local global i32 0, align 4
@RNG_RBGEN_BIT = common dso_local global i32 0, align 4
@RNG_RBG2X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_rng_softc*)* @bcm2835_rng_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_rng_start(%struct.bcm2835_rng_softc* %0) #0 {
  %2 = alloca %struct.bcm2835_rng_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_rng_softc* %0, %struct.bcm2835_rng_softc** %2, align 8
  %4 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %5 = call i32 @bcm2835_rng_disable_intr(%struct.bcm2835_rng_softc* %4)
  %6 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %7 = load i32, i32* @RNG_STATUS, align 4
  %8 = load i32, i32* @RND_VAL_WARM_CNT, align 4
  %9 = call i32 @bcm2835_rng_write4(%struct.bcm2835_rng_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %11 = load i32, i32* @RNG_CTRL, align 4
  %12 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @RNG_RBGEN_BIT, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @RNG_RBG2X, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %26 = load i32, i32* @RNG_CTRL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bcm2835_rng_write4(%struct.bcm2835_rng_softc* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @bcm2835_rng_disable_intr(%struct.bcm2835_rng_softc*) #1

declare dso_local i32 @bcm2835_rng_write4(%struct.bcm2835_rng_softc*, i32, i32) #1

declare dso_local i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
