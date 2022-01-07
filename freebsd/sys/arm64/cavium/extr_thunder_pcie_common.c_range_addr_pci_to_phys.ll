; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_common.c_range_addr_pci_to_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_common.c_range_addr_pci_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_range = type { i64, i64, i64 }

@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @range_addr_pci_to_phys(%struct.pcie_range* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pcie_range*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcie_range*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pcie_range* %0, %struct.pcie_range** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load %struct.pcie_range*, %struct.pcie_range** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %14, i64 %16
  store %struct.pcie_range* %17, %struct.pcie_range** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.pcie_range*, %struct.pcie_range** %6, align 8
  %20 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.pcie_range*, %struct.pcie_range** %6, align 8
  %26 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pcie_range*, %struct.pcie_range** %6, align 8
  %29 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = icmp slt i64 %24, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.pcie_range*, %struct.pcie_range** %6, align 8
  %36 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.pcie_range*, %struct.pcie_range** %6, align 8
  %40 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %3, align 8
  br label %49

44:                                               ; preds = %23, %13
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %9

48:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
