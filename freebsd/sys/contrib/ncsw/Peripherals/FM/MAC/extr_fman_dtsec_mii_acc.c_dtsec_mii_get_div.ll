; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_dtsec_mii_get_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_dtsec_mii_get_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dtsec_mii_get_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_mii_get_div(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 80
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %33

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 120
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %3, align 4
  br label %32

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 160
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %3, align 4
  br label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 200
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %3, align 4
  br label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 280
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 5, i32* %3, align 4
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 6, i32* %3, align 4
  br label %28

27:                                               ; preds = %23
  store i32 7, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %10
  br label %33

33:                                               ; preds = %32, %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
