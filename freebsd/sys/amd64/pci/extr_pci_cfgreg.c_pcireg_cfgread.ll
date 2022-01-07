; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pcireg_cfgread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/pci/extr_pci_cfgreg.c_pcireg_cfgread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcicfg_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @pcireg_cfgread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcireg_cfgread(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %13 = call i32 @mtx_lock_spin(i32* @pcicfg_mtx)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @pci_cfgenable(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %33 [
    i32 1, label %24
    i32 2, label %27
    i32 4, label %30
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @inb(i32 %25)
  store i32 %26, i32* %11, align 4
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @inw(i32 %28)
  store i32 %29, i32* %11, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @inl(i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %22, %30, %27, %24
  %34 = call i32 (...) @pci_cfgdisable()
  br label %35

35:                                               ; preds = %33, %5
  %36 = call i32 @mtx_unlock_spin(i32* @pcicfg_mtx)
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @pci_cfgenable(i32, i32, i32, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @pci_cfgdisable(...) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
