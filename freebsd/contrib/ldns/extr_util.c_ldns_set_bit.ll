; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_set_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_set_bit(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %15
  br label %31

31:                                               ; preds = %30, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
