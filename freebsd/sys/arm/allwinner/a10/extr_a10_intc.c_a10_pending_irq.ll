; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_pending_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_aintc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10_aintc_softc*)* @a10_pending_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_pending_irq(%struct.a10_aintc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a10_aintc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.a10_aintc_softc* %0, %struct.a10_aintc_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @SW_INT_IRQ_PENDING_REG(i32 %12)
  %14 = call i32 @aintc_read_4(%struct.a10_aintc_softc* %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %38

18:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 32
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @aintc_read_4(%struct.a10_aintc_softc*, i32) #1

declare dso_local i32 @SW_INT_IRQ_PENDING_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
