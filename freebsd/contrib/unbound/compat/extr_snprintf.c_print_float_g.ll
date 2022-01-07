; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_float_g.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_float_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, double, i32)* @print_float_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_float_g(i8* %0, i32 %1, double %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load double, double* %7, align 8
  %14 = fptoui double %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load double, double* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = uitofp i64 %16 to double
  %18 = fsub double %15, %17
  store double %18, double* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %22, %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %9, align 8
  %26 = udiv i64 %25, 10
  store i64 %26, i64* %9, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load double, double* %7, align 8
  %29 = fptoui double %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load double, double* %10, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load double, double* %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @print_remainder(i8* %37, i32 %38, double %39, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %55, %36
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 48
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = call i32 @memmove(i8* %56, i8* %58, i32 %60)
  br label %44

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %33, %27
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @print_dec_ll(i8* %67, i32 %70, i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local i32 @print_remainder(i8*, i32, double, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @print_dec_ll(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
