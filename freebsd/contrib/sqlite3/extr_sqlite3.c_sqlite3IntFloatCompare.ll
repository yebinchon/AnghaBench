; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3IntFloatCompare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3IntFloatCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, double)* @sqlite3IntFloatCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3IntFloatCompare(i64 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp olt double %8, 0xC3E0000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load double, double* %5, align 8
  %13 = fcmp oge double %12, 0x43E0000000000000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %40

15:                                               ; preds = %11
  %16 = load double, double* %5, align 8
  %17 = fptosi double %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %40

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %40

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = sitofp i64 %28 to double
  store double %29, double* %7, align 8
  %30 = load double, double* %7, align 8
  %31 = load double, double* %5, align 8
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load double, double* %7, align 8
  %36 = load double, double* %5, align 8
  %37 = fcmp ogt double %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %33, %26, %21, %14, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
