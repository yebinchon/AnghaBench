; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_find_iommu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_find_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i64, i64 }

@ivhd_count = common dso_local global i32 0, align 4
@ivhd_devs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"BIOS bug device(%d.%d.%d) doesn't have IVHD entry.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amdvi_softc* (i64)* @amdvi_find_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amdvi_softc* @amdvi_find_iommu(i64 %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.amdvi_softc*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ivhd_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32*, i32** @ivhd_devs, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.amdvi_softc* @device_get_softc(i32 %15)
  store %struct.amdvi_softc* %16, %struct.amdvi_softc** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.amdvi_softc*, %struct.amdvi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.amdvi_softc*, %struct.amdvi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.amdvi_softc*, %struct.amdvi_softc** %4, align 8
  store %struct.amdvi_softc* %29, %struct.amdvi_softc** %2, align 8
  br label %42

30:                                               ; preds = %22, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @RID2PCI_STR(i64 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** @ivhd_devs, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.amdvi_softc* @device_get_softc(i32 %40)
  store %struct.amdvi_softc* %41, %struct.amdvi_softc** %2, align 8
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  ret %struct.amdvi_softc* %43
}

declare dso_local %struct.amdvi_softc* @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @RID2PCI_STR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
