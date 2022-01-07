; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pcie_cfgregopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pcie_cfgregopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcfg_enable = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"PCIe: Memory Mapped configuration base @ 0x%lx\0A\00", align 1
@pcie_base = common dso_local global i64 0, align 8
@pcie_minbus = common dso_local global i64 0, align 8
@pcie_maxbus = common dso_local global i64 0, align 8
@CFGMECH_PCIE = common dso_local global i32 0, align 4
@cfgmech = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@pcie_badslots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_cfgregopen(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @mcfg_enable, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %14
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  %28 = shl i64 %27, 20
  %29 = call i64 @pmap_mapdev_pciecfg(i32 %25, i64 %28)
  store i64 %29, i64* @pcie_base, align 8
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* @pcie_minbus, align 8
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* @pcie_maxbus, align 8
  %32 = load i32, i32* @CFGMECH_PCIE, align 4
  store i32 %32, i32* @cfgmech, align 4
  %33 = call i64 (...) @pci_cfgregopen()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PCI_SLOTMAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @pcireg_cfgread(i32 0, i32 %41, i32 0, i32 0, i32 4)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %58

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @pciereg_cfgread(i32 0, i32 %47, i32 0, i32 0, i32 4)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @pcie_badslots, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @pcie_badslots, align 4
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %36

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %24
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %17, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @pmap_mapdev_pciecfg(i32, i64) #1

declare dso_local i64 @pci_cfgregopen(...) #1

declare dso_local i32 @pcireg_cfgread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pciereg_cfgread(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
