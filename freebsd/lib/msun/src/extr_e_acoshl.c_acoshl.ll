; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acoshl.c_acoshl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acoshl.c_acoshl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIAS = common dso_local global i32 0, align 4
@EXP_LARGE = common dso_local global i32 0, align 4
@ln2 = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @acoshl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %6 = call i32 (...) @ENTERI()
  %7 = load i32, i32* %5, align 4
  %8 = load x86_fp80, x86_fp80* %3, align 16
  %9 = call i32 @GET_LDBL_EXPSIGN(i32 %7, x86_fp80 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 16383
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load x86_fp80, x86_fp80* %3, align 16
  %14 = load x86_fp80, x86_fp80* %3, align 16
  %15 = fsub x86_fp80 %13, %14
  %16 = load x86_fp80, x86_fp80* %3, align 16
  %17 = load x86_fp80, x86_fp80* %3, align 16
  %18 = fsub x86_fp80 %16, %17
  %19 = fdiv x86_fp80 %15, %18
  %20 = fptrunc x86_fp80 %19 to double
  %21 = call i32 @RETURNI(double %20)
  br label %94

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BIAS, align 4
  %25 = load i32, i32* @EXP_LARGE, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 32767
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load x86_fp80, x86_fp80* %3, align 16
  %33 = load x86_fp80, x86_fp80* %3, align 16
  %34 = fadd x86_fp80 %32, %33
  %35 = fptrunc x86_fp80 %34 to double
  %36 = call i32 @RETURNI(double %35)
  br label %44

37:                                               ; preds = %28
  %38 = load x86_fp80, x86_fp80* %3, align 16
  %39 = fptrunc x86_fp80 %38 to double
  %40 = call double @logl(double %39)
  %41 = load double, double* @ln2, align 8
  %42 = fadd double %40, %41
  %43 = call i32 @RETURNI(double %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %93

45:                                               ; preds = %22
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 16383
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load x86_fp80, x86_fp80* %3, align 16
  %50 = fcmp oeq x86_fp80 %49, 0xK3FFF8000000000000000
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @RETURNI(double 0.000000e+00)
  br label %92

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 16384
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load x86_fp80, x86_fp80* %3, align 16
  %58 = load x86_fp80, x86_fp80* %3, align 16
  %59 = fmul x86_fp80 %57, %58
  store x86_fp80 %59, x86_fp80* %4, align 16
  %60 = load x86_fp80, x86_fp80* %3, align 16
  %61 = fmul x86_fp80 0xK40008000000000000000, %60
  %62 = load x86_fp80, x86_fp80* @one, align 16
  %63 = load x86_fp80, x86_fp80* %3, align 16
  %64 = load x86_fp80, x86_fp80* %4, align 16
  %65 = load x86_fp80, x86_fp80* @one, align 16
  %66 = fsub x86_fp80 %64, %65
  %67 = fptrunc x86_fp80 %66 to double
  %68 = call x86_fp80 @sqrtl(double %67)
  %69 = fadd x86_fp80 %63, %68
  %70 = fdiv x86_fp80 %62, %69
  %71 = fsub x86_fp80 %61, %70
  %72 = fptrunc x86_fp80 %71 to double
  %73 = call double @logl(double %72)
  %74 = call i32 @RETURNI(double %73)
  br label %91

75:                                               ; preds = %53
  %76 = load x86_fp80, x86_fp80* %3, align 16
  %77 = load x86_fp80, x86_fp80* @one, align 16
  %78 = fsub x86_fp80 %76, %77
  store x86_fp80 %78, x86_fp80* %4, align 16
  %79 = load x86_fp80, x86_fp80* %4, align 16
  %80 = load x86_fp80, x86_fp80* %4, align 16
  %81 = fmul x86_fp80 0xK40008000000000000000, %80
  %82 = load x86_fp80, x86_fp80* %4, align 16
  %83 = load x86_fp80, x86_fp80* %4, align 16
  %84 = fmul x86_fp80 %82, %83
  %85 = fadd x86_fp80 %81, %84
  %86 = fptrunc x86_fp80 %85 to double
  %87 = call x86_fp80 @sqrtl(double %86)
  %88 = fadd x86_fp80 %79, %87
  %89 = call double @log1pl(x86_fp80 %88)
  %90 = call i32 @RETURNI(double %89)
  br label %91

91:                                               ; preds = %75, %56
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92, %44
  br label %94

94:                                               ; preds = %93, %12
  %95 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %95
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @RETURNI(double) #1

declare dso_local double @logl(double) #1

declare dso_local x86_fp80 @sqrtl(double) #1

declare dso_local double @log1pl(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
