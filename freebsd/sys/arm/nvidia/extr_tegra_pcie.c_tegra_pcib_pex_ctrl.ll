; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_pex_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_pex_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32 }

@TEGRA_PCIB_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid port number: %d\0A\00", align 1
@AFI_PEX0_CTRL = common dso_local global i32 0, align 4
@AFI_PEX1_CTRL = common dso_local global i32 0, align 4
@AFI_PEX2_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*, i32)* @tegra_pcib_pex_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_pex_ctrl(%struct.tegra_pcib_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcib_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @AFI_PEX0_CTRL, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @AFI_PEX1_CTRL, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @AFI_PEX2_CTRL, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %15, %20, %25, %31
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
