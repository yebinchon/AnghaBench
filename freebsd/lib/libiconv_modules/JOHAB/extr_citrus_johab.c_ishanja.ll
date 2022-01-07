; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/JOHAB/extr_citrus_johab.c_ishanja.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/JOHAB/extr_citrus_johab.c_ishanja.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ishanja to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishanja(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 217
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 222
  br i1 %9, label %16, label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 224
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 249
  br i1 %15, label %16, label %32

16:                                               ; preds = %13, %7
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 49
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 126
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 145
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 254
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi i1 [ true, %19 ], [ %29, %28 ]
  br label %32

32:                                               ; preds = %30, %13, %10
  %33 = phi i1 [ false, %13 ], [ false, %10 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
