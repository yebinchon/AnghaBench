; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_string_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_string_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @string_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @string_size(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 3, i64* %5, align 8
  br label %7

7:                                                ; preds = %49, %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = load i8, i8* %8, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 126
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 1
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %49

33:                                               ; preds = %14, %7
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %45 [
    i32 129, label %36
    i32 130, label %38
    i32 131, label %42
    i32 135, label %42
    i32 134, label %42
    i32 132, label %42
    i32 133, label %42
    i32 128, label %42
  ]

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  ret i64 %37

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %48

42:                                               ; preds = %33, %33, %33, %33, %33, %33
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 2
  store i64 %44, i64* %5, align 8
  br label %48

45:                                               ; preds = %33
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %45, %42, %38
  br label %49

49:                                               ; preds = %48, %26
  br label %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
