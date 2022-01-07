; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_ttlv_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_ttlv_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ttlv_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttlv_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 4096
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  store i32 1, i32* %2, align 4
  br label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %17, 17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %33

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 272
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 %24, 278
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %33

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %33

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %26, %19, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
