; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_max_vht80_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_max_vht80_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @max_vht80_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_vht80_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 29300, i32* %2, align 4
  br label %44

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 58500, i32* %2, align 4
  br label %44

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 87800, i32* %2, align 4
  br label %44

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 11
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 117000, i32* %2, align 4
  br label %44

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 15
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 175500, i32* %2, align 4
  br label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 234000, i32* %2, align 4
  br label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 18
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 263300, i32* %2, align 4
  br label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 20
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 292500, i32* %2, align 4
  br label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 22
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 351000, i32* %2, align 4
  br label %44

43:                                               ; preds = %39
  store i32 390000, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
