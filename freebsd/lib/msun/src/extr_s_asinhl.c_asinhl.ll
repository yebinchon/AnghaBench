; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinhl.c_asinhl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinhl.c_asinhl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIAS = common dso_local global i32 0, align 4
@EXP_TINY = common dso_local global i32 0, align 4
@huge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@EXP_LARGE = common dso_local global i32 0, align 4
@ln2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @asinhl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %8 = call i32 (...) @ENTERI()
  %9 = load i32, i32* %6, align 4
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = call i32 @GET_LDBL_EXPSIGN(i32 %9, x86_fp80 %10)
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 32767
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 32767
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load x86_fp80, x86_fp80* %3, align 16
  %18 = load x86_fp80, x86_fp80* %3, align 16
  %19 = fadd x86_fp80 %17, %18
  %20 = call i32 @RETURNI(x86_fp80 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BIAS, align 4
  %24 = load i32, i32* @EXP_TINY, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load x86_fp80, x86_fp80* @huge, align 16
  %29 = load x86_fp80, x86_fp80* %3, align 16
  %30 = fadd x86_fp80 %28, %29
  %31 = load x86_fp80, x86_fp80* @one, align 16
  %32 = fcmp ogt x86_fp80 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load x86_fp80, x86_fp80* %3, align 16
  %35 = call i32 @RETURNI(x86_fp80 %34)
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BIAS, align 4
  %40 = load i32, i32* @EXP_LARGE, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load x86_fp80, x86_fp80* %3, align 16
  %45 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %44)
  %46 = fptrunc x86_fp80 %45 to double
  %47 = call x86_fp80 @logl(double %46)
  %48 = load x86_fp80, x86_fp80* @ln2, align 16
  %49 = fadd x86_fp80 %47, %48
  store x86_fp80 %49, x86_fp80* %5, align 16
  br label %88

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 16384
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load x86_fp80, x86_fp80* %3, align 16
  %55 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %54)
  store x86_fp80 %55, x86_fp80* %4, align 16
  %56 = load x86_fp80, x86_fp80* %4, align 16
  %57 = fmul x86_fp80 0xK40008000000000000000, %56
  %58 = load x86_fp80, x86_fp80* @one, align 16
  %59 = load x86_fp80, x86_fp80* %3, align 16
  %60 = load x86_fp80, x86_fp80* %3, align 16
  %61 = fmul x86_fp80 %59, %60
  %62 = load x86_fp80, x86_fp80* @one, align 16
  %63 = fadd x86_fp80 %61, %62
  %64 = call x86_fp80 @sqrtl(x86_fp80 %63) #4
  %65 = load x86_fp80, x86_fp80* %4, align 16
  %66 = fadd x86_fp80 %64, %65
  %67 = fdiv x86_fp80 %58, %66
  %68 = fadd x86_fp80 %57, %67
  %69 = fptrunc x86_fp80 %68 to double
  %70 = call x86_fp80 @logl(double %69)
  store x86_fp80 %70, x86_fp80* %5, align 16
  br label %87

71:                                               ; preds = %50
  %72 = load x86_fp80, x86_fp80* %3, align 16
  %73 = load x86_fp80, x86_fp80* %3, align 16
  %74 = fmul x86_fp80 %72, %73
  store x86_fp80 %74, x86_fp80* %4, align 16
  %75 = load x86_fp80, x86_fp80* %3, align 16
  %76 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %75)
  %77 = load x86_fp80, x86_fp80* %4, align 16
  %78 = load x86_fp80, x86_fp80* @one, align 16
  %79 = load x86_fp80, x86_fp80* @one, align 16
  %80 = load x86_fp80, x86_fp80* %4, align 16
  %81 = fadd x86_fp80 %79, %80
  %82 = call x86_fp80 @sqrtl(x86_fp80 %81) #4
  %83 = fadd x86_fp80 %78, %82
  %84 = fdiv x86_fp80 %77, %83
  %85 = fadd x86_fp80 %76, %84
  %86 = call x86_fp80 @log1pl(x86_fp80 %85) #4
  store x86_fp80 %86, x86_fp80* %5, align 16
  br label %87

87:                                               ; preds = %71, %53
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 32768
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load x86_fp80, x86_fp80* %5, align 16
  br label %97

94:                                               ; preds = %88
  %95 = load x86_fp80, x86_fp80* %5, align 16
  %96 = fneg x86_fp80 %95
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi x86_fp80 [ %93, %92 ], [ %96, %94 ]
  %99 = call i32 @RETURNI(x86_fp80 %98)
  %100 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %100
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @RETURNI(x86_fp80) #1

declare dso_local x86_fp80 @logl(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #2

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #3

; Function Attrs: nounwind
declare dso_local x86_fp80 @log1pl(x86_fp80) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
