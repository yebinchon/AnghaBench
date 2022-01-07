; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_logarithm_test.c_run_log2_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_logarithm_test.c_run_log2_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FLT_MIN_EXP = common dso_local global i32 0, align 4
@FLT_MANT_DIG = common dso_local global i32 0, align 4
@FLT_MAX_EXP = common dso_local global i32 0, align 4
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@DBL_MIN_EXP = common dso_local global i32 0, align 4
@DBL_MANT_DIG = common dso_local global i32 0, align 4
@DBL_MAX_EXP = common dso_local global i32 0, align 4
@LDBL_MIN_EXP = common dso_local global i32 0, align 4
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_log2_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_log2_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %3 = call i64 @feclearexcept(i32 %2)
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @FLT_MIN_EXP, align 4
  %8 = load i32, i32* @FLT_MANT_DIG, align 4
  %9 = sub i32 %7, %8
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %27, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @FLT_MAX_EXP, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ldexpf(double 1.000000e+00, i32 %15)
  %17 = call i32 @log2f(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %23 = call i64 @fetestexcept(i32 %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* @DBL_MIN_EXP, align 4
  %32 = load i32, i32* @DBL_MANT_DIG, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %51, %30
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @DBL_MAX_EXP, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @ldexp(double 1.000000e+00, i32 %39)
  %41 = call i32 @log2(i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %47 = call i64 @fetestexcept(i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %1, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* @LDBL_MIN_EXP, align 4
  %56 = load i32, i32* @LDBL_MANT_DIG, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %70, %54
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @LDBL_MAX_EXP, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @ldexpl(double 1.000000e+00, i32 %63)
  %65 = call i32 @log2l(i32 %64)
  %66 = load i32, i32* %1, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %1, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %58

73:                                               ; preds = %58
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @feclearexcept(i32) #1

declare dso_local i32 @log2f(i32) #1

declare dso_local i32 @ldexpf(double, i32) #1

declare dso_local i64 @fetestexcept(i32) #1

declare dso_local i32 @log2(i32) #1

declare dso_local i32 @ldexp(double, i32) #1

declare dso_local i32 @log2l(i32) #1

declare dso_local i32 @ldexpl(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
