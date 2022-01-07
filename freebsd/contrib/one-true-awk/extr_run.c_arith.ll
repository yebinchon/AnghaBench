; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_arith.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"division by zero in mod\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"illegal arithmetic operator %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @arith(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %6, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32* @execute(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call double @getfval(i32* %15)
  store double %16, double* %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @tempfree(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 129
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32**, i32*** %3, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @execute(i32* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call double @getfval(i32* %29)
  store double %30, double* %6, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @tempfree(i32* %31)
  br label %33

33:                                               ; preds = %24, %21, %2
  %34 = call i32* (...) @gettemp()
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %94 [
    i32 135, label %36
    i32 133, label %40
    i32 131, label %44
    i32 134, label %48
    i32 132, label %57
    i32 129, label %72
    i32 128, label %75
    i32 130, label %76
  ]

36:                                               ; preds = %33
  %37 = load double, double* %6, align 8
  %38 = load double, double* %5, align 8
  %39 = fadd double %38, %37
  store double %39, double* %5, align 8
  br label %97

40:                                               ; preds = %33
  %41 = load double, double* %6, align 8
  %42 = load double, double* %5, align 8
  %43 = fsub double %42, %41
  store double %43, double* %5, align 8
  br label %97

44:                                               ; preds = %33
  %45 = load double, double* %6, align 8
  %46 = load double, double* %5, align 8
  %47 = fmul double %46, %45
  store double %47, double* %5, align 8
  br label %97

48:                                               ; preds = %33
  %49 = load double, double* %6, align 8
  %50 = fcmp oeq double %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load double, double* %6, align 8
  %55 = load double, double* %5, align 8
  %56 = fdiv double %55, %54
  store double %56, double* %5, align 8
  br label %97

57:                                               ; preds = %33
  %58 = load double, double* %6, align 8
  %59 = fcmp oeq double %58, 0.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load double, double* %5, align 8
  %64 = load double, double* %6, align 8
  %65 = fdiv double %63, %64
  %66 = call double @modf(double %65, double* %7) #3
  %67 = load double, double* %5, align 8
  %68 = load double, double* %6, align 8
  %69 = load double, double* %7, align 8
  %70 = fmul double %68, %69
  %71 = fsub double %67, %70
  store double %71, double* %5, align 8
  br label %97

72:                                               ; preds = %33
  %73 = load double, double* %5, align 8
  %74 = fneg double %73
  store double %74, double* %5, align 8
  br label %97

75:                                               ; preds = %33
  br label %97

76:                                               ; preds = %33
  %77 = load double, double* %6, align 8
  %78 = fcmp oge double %77, 0.000000e+00
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load double, double* %6, align 8
  %81 = call double @modf(double %80, double* %7) #3
  %82 = fcmp oeq double %81, 0.000000e+00
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load double, double* %5, align 8
  %85 = load double, double* %6, align 8
  %86 = fptosi double %85 to i32
  %87 = call double @ipow(double %84, i32 %86)
  store double %87, double* %5, align 8
  br label %93

88:                                               ; preds = %79, %76
  %89 = load double, double* %5, align 8
  %90 = load double, double* %6, align 8
  %91 = call i32 @pow(double %89, double %90)
  %92 = call double @errcheck(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store double %92, double* %5, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %97

94:                                               ; preds = %33
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %93, %75, %72, %62, %53, %44, %40, %36
  %98 = load i32*, i32** %10, align 8
  %99 = load double, double* %5, align 8
  %100 = call i32 @setfval(i32* %98, double %99)
  %101 = load i32*, i32** %10, align 8
  ret i32* %101
}

declare dso_local i32* @execute(i32*) #1

declare dso_local double @getfval(i32*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32* @gettemp(...) #1

declare dso_local i32 @FATAL(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #2

declare dso_local double @ipow(double, i32) #1

declare dso_local double @errcheck(i32, i8*) #1

declare dso_local i32 @pow(double, double) #1

declare dso_local i32 @setfval(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
