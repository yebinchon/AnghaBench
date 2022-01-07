; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_remainder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, double, i32)* @print_remainder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_remainder(i8* %0, i32 %1, double %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 1, i64* %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 19
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 19, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %84

22:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = mul i64 %28, 10
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i64, i64* %10, align 8
  %35 = uitofp i64 %34 to double
  %36 = load double, double* %8, align 8
  %37 = fmul double %36, %35
  store double %37, double* %8, align 8
  %38 = load double, double* %8, align 8
  %39 = fptoui double %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load double, double* %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = uitofp i64 %41 to double
  %43 = fsub double %40, %42
  %44 = fmul double %43, 1.000000e+01
  %45 = fptoui double %44 to i64
  %46 = icmp uge i64 %45, 5
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @print_dec_ll(i8* %58, i32 %59, i64 %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %66, %57
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 48, i8* %71, align 1
  br label %62

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 46, i8* %81, align 1
  br label %82

82:                                               ; preds = %76, %72
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @print_dec_ll(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
