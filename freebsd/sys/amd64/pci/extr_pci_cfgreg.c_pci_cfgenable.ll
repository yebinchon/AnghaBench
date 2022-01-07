; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pci_cfgenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pci_cfgenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_BUSMAX = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCI_REGMAX = common dso_local global i32 0, align 4
@CONF1_ADDR_PORT = common dso_local global i32 0, align 4
@CONF1_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @pci_cfgenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_cfgenable(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PCI_BUSMAX, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCI_SLOTMAX, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PCI_FUNCMAX, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PCI_REGMAX, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ule i32 %31, 4
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 -2147483648, %42
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 11
  %46 = or i32 %43, %45
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, -4
  %52 = or i32 %49, %51
  %53 = call i32 @outl(i32 %40, i32 %52)
  %54 = load i32, i32* @CONF1_DATA_PORT, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 3
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %39, %33, %30, %27, %23, %19, %15, %5
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
