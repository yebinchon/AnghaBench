; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanhl.c_atanhl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanhl.c_atanhl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@BIAS = common dso_local global i32 0, align 4
@EXP_TINY = common dso_local global i32 0, align 4
@huge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @atanhl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %7 = call i32 (...) @ENTERI()
  %8 = load i32, i32* %5, align 4
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = call i32 @GET_LDBL_EXPSIGN(i32 %8, x86_fp80 %9)
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 32767
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 16383
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load x86_fp80, x86_fp80* %3, align 16
  %17 = call i32 @fabsl(x86_fp80 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load x86_fp80, x86_fp80* %3, align 16
  %21 = load x86_fp80, x86_fp80* @zero, align 16
  %22 = fdiv x86_fp80 %20, %21
  br label %31

23:                                               ; preds = %15
  %24 = load x86_fp80, x86_fp80* %3, align 16
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = fsub x86_fp80 %24, %25
  %27 = load x86_fp80, x86_fp80* %3, align 16
  %28 = load x86_fp80, x86_fp80* %3, align 16
  %29 = fsub x86_fp80 %27, %28
  %30 = fdiv x86_fp80 %26, %29
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi x86_fp80 [ %22, %19 ], [ %30, %23 ]
  %33 = call i32 @RETURNI(x86_fp80 %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BIAS, align 4
  %37 = load i32, i32* @EXP_TINY, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load x86_fp80, x86_fp80* @huge, align 16
  %42 = load x86_fp80, x86_fp80* %3, align 16
  %43 = fadd x86_fp80 %41, %42
  %44 = load x86_fp80, x86_fp80* @zero, align 16
  %45 = fcmp ogt x86_fp80 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load x86_fp80, x86_fp80* %3, align 16
  %48 = call i32 @RETURNI(x86_fp80 %47)
  br label %49

49:                                               ; preds = %46, %40, %34
  %50 = load x86_fp80, x86_fp80* %3, align 16
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 16382
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load x86_fp80, x86_fp80* %3, align 16
  %57 = load x86_fp80, x86_fp80* %3, align 16
  %58 = fadd x86_fp80 %56, %57
  store x86_fp80 %58, x86_fp80* %4, align 16
  %59 = load x86_fp80, x86_fp80* %4, align 16
  %60 = load x86_fp80, x86_fp80* %4, align 16
  %61 = load x86_fp80, x86_fp80* %3, align 16
  %62 = fmul x86_fp80 %60, %61
  %63 = load x86_fp80, x86_fp80* @one, align 16
  %64 = load x86_fp80, x86_fp80* %3, align 16
  %65 = fsub x86_fp80 %63, %64
  %66 = fdiv x86_fp80 %62, %65
  %67 = fadd x86_fp80 %59, %66
  %68 = call double @log1pl(x86_fp80 %67)
  %69 = fmul double 5.000000e-01, %68
  %70 = fpext double %69 to x86_fp80
  store x86_fp80 %70, x86_fp80* %4, align 16
  br label %82

71:                                               ; preds = %49
  %72 = load x86_fp80, x86_fp80* %3, align 16
  %73 = load x86_fp80, x86_fp80* %3, align 16
  %74 = fadd x86_fp80 %72, %73
  %75 = load x86_fp80, x86_fp80* @one, align 16
  %76 = load x86_fp80, x86_fp80* %3, align 16
  %77 = fsub x86_fp80 %75, %76
  %78 = fdiv x86_fp80 %74, %77
  %79 = call double @log1pl(x86_fp80 %78)
  %80 = fmul double 5.000000e-01, %79
  %81 = fpext double %80 to x86_fp80
  store x86_fp80 %81, x86_fp80* %4, align 16
  br label %82

82:                                               ; preds = %71, %55
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 32768
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load x86_fp80, x86_fp80* %4, align 16
  br label %91

88:                                               ; preds = %82
  %89 = load x86_fp80, x86_fp80* %4, align 16
  %90 = fneg x86_fp80 %89
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi x86_fp80 [ %87, %86 ], [ %90, %88 ]
  %93 = call i32 @RETURNI(x86_fp80 %92)
  %94 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %94
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @RETURNI(x86_fp80) #1

declare dso_local i32 @fabsl(x86_fp80) #1

declare dso_local i32 @SET_LDBL_EXPSIGN(x86_fp80, i32) #1

declare dso_local double @log1pl(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
