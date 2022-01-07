; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_exponential_test.c_run_exp2_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_exponential_test.c_run_exp2_tests.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_exp2_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_exp2_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %3 = call i32 @feclearexcept(i32 %2)
  %4 = load i32, i32* @FLT_MIN_EXP, align 4
  %5 = load i32, i32* @FLT_MANT_DIG, align 4
  %6 = sub i32 %4, %5
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @FLT_MAX_EXP, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @exp2f(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @ldexpf(double 1.000000e+00, i32 %14)
  %16 = icmp eq i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %20 = call i64 @fetestexcept(i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* @DBL_MIN_EXP, align 4
  %29 = load i32, i32* @DBL_MANT_DIG, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %48, %27
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @DBL_MAX_EXP, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %1, align 4
  %37 = call i64 @exp2(i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = call i64 @ldexp(double 1.000000e+00, i32 %38)
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %44 = call i64 @fetestexcept(i32 %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %1, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* @LDBL_MIN_EXP, align 4
  %53 = load i32, i32* @LDBL_MANT_DIG, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %72, %51
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @LDBL_MAX_EXP, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32, i32* %1, align 4
  %61 = call i64 @exp2l(i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = call i64 @ldexpl(double 1.000000e+00, i32 %62)
  %64 = icmp eq i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %68 = call i64 @fetestexcept(i32 %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %1, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %55

75:                                               ; preds = %55
  ret void
}

declare dso_local i32 @feclearexcept(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @exp2f(i32) #1

declare dso_local i64 @ldexpf(double, i32) #1

declare dso_local i64 @fetestexcept(i32) #1

declare dso_local i64 @exp2(i32) #1

declare dso_local i64 @ldexp(double, i32) #1

declare dso_local i64 @exp2l(i32) #1

declare dso_local i64 @ldexpl(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
