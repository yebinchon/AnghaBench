; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_ID_MSI = common dso_local global i32 0, align 4
@PCI_RID_DOMAIN_SHIFT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @thunder_pem_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_get_id(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PCI_ID_MSI, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64*, i64** %9, align 8
  %20 = call i32 @pcib_get_id(i32 %16, i32 %17, i32 %18, i64* %19)
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pci_get_rid(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @pci_get_domain(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @PCI_RID_DOMAIN_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  br label %70

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @PCI_RID_DOMAIN_SHIFT, align 4
  %40 = shl i32 3, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %69

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 9
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @PCI_RID_DOMAIN_SHIFT, align 4
  %50 = shl i32 9, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %68

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 12
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* @PCI_RID_DOMAIN_SHIFT, align 4
  %60 = shl i32 11, %59
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %38
  br label %70

70:                                               ; preds = %69, %28
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %65, %15
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @pcib_get_id(i32, i32, i32, i64*) #1

declare dso_local i32 @pci_get_rid(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
