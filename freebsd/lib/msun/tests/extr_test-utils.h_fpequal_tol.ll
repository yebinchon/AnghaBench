; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_test-utils.h_fpequal_tol.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_test-utils.h_fpequal_tol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS_BOTH = common dso_local global i32 0, align 4
@FPE_ABS_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (x86_fp80, x86_fp80, x86_fp80, i32)* @fpequal_tol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpequal_tol(x86_fp80 %0, x86_fp80 %1, x86_fp80 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %6, align 16
  store x86_fp80 %1, x86_fp80* %7, align 16
  store x86_fp80 %2, x86_fp80* %8, align 16
  store i32 %3, i32* %9, align 4
  %12 = load x86_fp80, x86_fp80* %6, align 16
  %13 = call i64 @isnan(x86_fp80 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load x86_fp80, x86_fp80* %7, align 16
  %17 = call i64 @isnan(x86_fp80 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %79

20:                                               ; preds = %15, %4
  %21 = load x86_fp80, x86_fp80* %6, align 16
  %22 = call i32 @signbit(x86_fp80 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load x86_fp80, x86_fp80* %7, align 16
  %27 = call i32 @signbit(x86_fp80 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CS_BOTH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %79

38:                                               ; preds = %32, %20
  %39 = load x86_fp80, x86_fp80* %6, align 16
  %40 = load x86_fp80, x86_fp80* %7, align 16
  %41 = fcmp oeq x86_fp80 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %79

43:                                               ; preds = %38
  %44 = load x86_fp80, x86_fp80* %8, align 16
  %45 = fcmp oeq x86_fp80 %44, 0xK00000000000000000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %79

47:                                               ; preds = %43
  %48 = call i32 @feholdexcept(i32* %10)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FPE_ABS_ZERO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load x86_fp80, x86_fp80* %7, align 16
  %55 = fcmp oeq x86_fp80 %54, 0xK00000000000000000000
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load x86_fp80, x86_fp80* %6, align 16
  %58 = load x86_fp80, x86_fp80* %7, align 16
  %59 = fsub x86_fp80 %57, %58
  %60 = call i64 @fabsl(x86_fp80 %59)
  %61 = load x86_fp80, x86_fp80* %8, align 16
  %62 = call i64 @fabsl(x86_fp80 %61)
  %63 = icmp sle i64 %60, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  br label %76

65:                                               ; preds = %53, %47
  %66 = load x86_fp80, x86_fp80* %6, align 16
  %67 = load x86_fp80, x86_fp80* %7, align 16
  %68 = fsub x86_fp80 %66, %67
  %69 = call i64 @fabsl(x86_fp80 %68)
  %70 = load x86_fp80, x86_fp80* %7, align 16
  %71 = load x86_fp80, x86_fp80* %8, align 16
  %72 = fmul x86_fp80 %70, %71
  %73 = call i64 @fabsl(x86_fp80 %72)
  %74 = icmp sle i64 %69, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %65, %56
  %77 = call i32 @fesetenv(i32* %10)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %46, %42, %37, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @isnan(x86_fp80) #1

declare dso_local i32 @signbit(x86_fp80) #1

declare dso_local i32 @feholdexcept(i32*) #1

declare dso_local i64 @fabsl(x86_fp80) #1

declare dso_local i32 @fesetenv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
