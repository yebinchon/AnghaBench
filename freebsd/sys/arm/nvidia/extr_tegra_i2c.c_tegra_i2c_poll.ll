; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_softc*)* @tegra_i2c_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_poll(%struct.tegra_i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %3, align 8
  store i32 10000, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %10 = call i32 @UNLOCK(%struct.tegra_i2c_softc* %9)
  %11 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %12 = call i32 @tegra_i2c_intr(%struct.tegra_i2c_softc* %11)
  %13 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %14 = call i32 @LOCK(%struct.tegra_i2c_softc* %13)
  %15 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %25

20:                                               ; preds = %8
  %21 = call i32 @DELAY(i32 1)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @UNLOCK(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @tegra_i2c_intr(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @LOCK(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
