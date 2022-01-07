; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_coshl.c_coshl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_coshl.c_coshl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIAS = common dso_local global i32 0, align 4
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@tiny = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@o_threshold = common dso_local global i64 0, align 8
@huge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C10 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C12 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C14 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C16 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C18 = common dso_local global double 0.000000e+00, align 8
@C2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C20 = common dso_local global double 0.000000e+00, align 8
@C22 = common dso_local global double 0.000000e+00, align 8
@C24 = common dso_local global double 0.000000e+00, align 8
@C26 = common dso_local global double 0.000000e+00, align 8
@C4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @coshl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %9 = load i32, i32* %8, align 4
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = call i32 @GET_LDBL_EXPSIGN(i32 %9, x86_fp80 %10)
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 32767
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 32767
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load x86_fp80, x86_fp80* %3, align 16
  %18 = load x86_fp80, x86_fp80* %3, align 16
  %19 = fmul x86_fp80 %17, %18
  store x86_fp80 %19, x86_fp80* %2, align 16
  br label %71

20:                                               ; preds = %1
  %21 = call i32 (...) @ENTERI()
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 16383
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BIAS, align 4
  %27 = load i32, i32* @LDBL_MANT_DIG, align 4
  %28 = add nsw i32 %27, 1
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 %26, %29
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load x86_fp80, x86_fp80* @tiny, align 16
  %34 = fadd x86_fp80 0xK3FFF8000000000000000, %33
  %35 = call i32 @RETURNI(x86_fp80 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load x86_fp80, x86_fp80* %3, align 16
  %38 = load x86_fp80, x86_fp80* %3, align 16
  %39 = fmul x86_fp80 %37, %38
  store x86_fp80 %39, x86_fp80* %6, align 16
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 16389
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load x86_fp80, x86_fp80* %3, align 16
  %45 = call i64 @fabsl(x86_fp80 %44)
  %46 = call i32 @k_hexpl(i64 %45, x86_fp80* %4, x86_fp80* %5)
  %47 = load x86_fp80, x86_fp80* %5, align 16
  %48 = load x86_fp80, x86_fp80* %4, align 16
  %49 = load x86_fp80, x86_fp80* %5, align 16
  %50 = fadd x86_fp80 %48, %49
  %51 = fdiv x86_fp80 0xK3FFD8000000000000000, %50
  %52 = fadd x86_fp80 %47, %51
  %53 = load x86_fp80, x86_fp80* %4, align 16
  %54 = fadd x86_fp80 %52, %53
  %55 = call i32 @RETURNI(x86_fp80 %54)
  br label %56

56:                                               ; preds = %43, %40
  %57 = load x86_fp80, x86_fp80* %3, align 16
  %58 = call i64 @fabsl(x86_fp80 %57)
  %59 = load i64, i64* @o_threshold, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load x86_fp80, x86_fp80* %3, align 16
  %63 = call i64 @fabsl(x86_fp80 %62)
  %64 = call x86_fp80 @hexpl(i64 %63)
  %65 = call i32 @RETURNI(x86_fp80 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load x86_fp80, x86_fp80* @huge, align 16
  %68 = load x86_fp80, x86_fp80* @huge, align 16
  %69 = fmul x86_fp80 %67, %68
  %70 = call i32 @RETURNI(x86_fp80 %69)
  br label %71

71:                                               ; preds = %66, %16
  %72 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %72
}

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @RETURNI(x86_fp80) #1

declare dso_local i32 @k_hexpl(i64, x86_fp80*, x86_fp80*) #1

declare dso_local i64 @fabsl(x86_fp80) #1

declare dso_local x86_fp80 @hexpl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
