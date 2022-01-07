; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosh.c_acosh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosh.c_acosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ln2 = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_acosh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load double, double* %3, align 8
  %10 = call i32 @EXTRACT_WORDS(i32 %7, i32 %8, double %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1072693248
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load double, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = fsub double %14, %15
  %17 = load double, double* %3, align 8
  %18 = load double, double* %3, align 8
  %19 = fsub double %17, %18
  %20 = fdiv double %16, %19
  store double %20, double* %2, align 8
  br label %76

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 1102053376
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 2146435072
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load double, double* %3, align 8
  %29 = load double, double* %3, align 8
  %30 = fadd double %28, %29
  store double %30, double* %2, align 8
  br label %76

31:                                               ; preds = %24
  %32 = load double, double* %3, align 8
  %33 = call double @__ieee754_log(double %32)
  %34 = load double, double* @ln2, align 8
  %35 = fadd double %33, %34
  store double %35, double* %2, align 8
  br label %76

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1072693248
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store double 0.000000e+00, double* %2, align 8
  br label %76

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 1073741824
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load double, double* %3, align 8
  %48 = load double, double* %3, align 8
  %49 = fmul double %47, %48
  store double %49, double* %4, align 8
  %50 = load double, double* %3, align 8
  %51 = fmul double 2.000000e+00, %50
  %52 = load double, double* @one, align 8
  %53 = load double, double* %3, align 8
  %54 = load double, double* %4, align 8
  %55 = load double, double* @one, align 8
  %56 = fsub double %54, %55
  %57 = call double @sqrt(double %56) #3
  %58 = fadd double %53, %57
  %59 = fdiv double %52, %58
  %60 = fsub double %51, %59
  %61 = call double @__ieee754_log(double %60)
  store double %61, double* %2, align 8
  br label %76

62:                                               ; preds = %43
  %63 = load double, double* %3, align 8
  %64 = load double, double* @one, align 8
  %65 = fsub double %63, %64
  store double %65, double* %4, align 8
  %66 = load double, double* %4, align 8
  %67 = load double, double* %4, align 8
  %68 = fmul double 2.000000e+00, %67
  %69 = load double, double* %4, align 8
  %70 = load double, double* %4, align 8
  %71 = fmul double %69, %70
  %72 = fadd double %68, %71
  %73 = call double @sqrt(double %72) #3
  %74 = fadd double %66, %73
  %75 = call double @log1p(double %74) #3
  store double %75, double* %2, align 8
  br label %76

76:                                               ; preds = %62, %46, %42, %31, %27, %13
  %77 = load double, double* %2, align 8
  ret double %77
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @__ieee754_log(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log1p(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
