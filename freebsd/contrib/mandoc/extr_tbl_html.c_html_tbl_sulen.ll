; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_html_tbl_sulen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_html_tbl_sulen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roffsu = type { double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.roffsu*, i8*)* @html_tbl_sulen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @html_tbl_sulen(%struct.roffsu* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.roffsu*, align 8
  %5 = alloca i8*, align 8
  store %struct.roffsu* %0, %struct.roffsu** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %7 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %69

11:                                               ; preds = %2
  %12 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %13 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %67 [
    i32 133, label %15
    i32 132, label %22
    i32 136, label %28
    i32 130, label %35
    i32 128, label %35
    i32 134, label %42
    i32 135, label %42
    i32 129, label %47
    i32 137, label %55
    i32 131, label %61
  ]

15:                                               ; preds = %11
  %16 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %17 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fmul double %18, 6.553600e+04
  %20 = fdiv double %19, 2.400000e+01
  %21 = fptoui double %20 to i64
  store i64 %21, i64* %3, align 8
  br label %69

22:                                               ; preds = %11
  %23 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %24 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, 1.000000e+01
  %27 = fptoui double %26 to i64
  store i64 %27, i64* %3, align 8
  br label %69

28:                                               ; preds = %11
  %29 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %30 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, 1.000000e+01
  %33 = fdiv double %32, 2.540000e+00
  %34 = fptoui double %33 to i64
  store i64 %34, i64* %3, align 8
  br label %69

35:                                               ; preds = %11, %11
  %36 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %37 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, 1.000000e+01
  %40 = fdiv double %39, 6.000000e+00
  %41 = fptoui double %40 to i64
  store i64 %41, i64* %3, align 8
  br label %69

42:                                               ; preds = %11, %11
  %43 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %44 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fptoui double %45 to i64
  store i64 %46, i64* %3, align 8
  br label %69

47:                                               ; preds = %11
  %48 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %49 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fmul double %50, 1.000000e+01
  %52 = fdiv double %51, 6.000000e+00
  %53 = fdiv double %52, 1.200000e+01
  %54 = fptoui double %53 to i64
  store i64 %54, i64* %3, align 8
  br label %69

55:                                               ; preds = %11
  %56 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %57 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fdiv double %58, 2.400000e+01
  %60 = fptoui double %59 to i64
  store i64 %60, i64* %3, align 8
  br label %69

61:                                               ; preds = %11
  %62 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %63 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = fdiv double %64, 1.000000e+02
  %66 = fptoui double %65 to i64
  store i64 %66, i64* %3, align 8
  br label %69

67:                                               ; preds = %11
  %68 = call i32 (...) @abort() #2
  unreachable

69:                                               ; preds = %61, %55, %47, %42, %35, %28, %22, %15, %10
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
