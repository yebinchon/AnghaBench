; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_up_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_up_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32 }

@AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCIe_%d: <<<<<<<<< Link up >>>>>>>>>\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PCIe_%d: No link up, %d attempts remaining\0A\00", align 1
@AL_PCIE_LINKUP_WAIT_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PCIE_%d: link is not established in time\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_up_wait(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %16 = call i64 @al_pcie_check_link(%struct.al_pcie_port* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %20 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %3, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %25 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @AL_PCIE_LINKUP_WAIT_INTERVAL, align 4
  %31 = call i32 @al_udelay(i32 %30)
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %34 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @al_pcie_check_link(%struct.al_pcie_port*, i32*) #1

declare dso_local i32 @al_dbg(i8*, i32, ...) #1

declare dso_local i32 @al_udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
