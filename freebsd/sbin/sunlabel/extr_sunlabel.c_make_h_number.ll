; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_make_h_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_make_h_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@make_h_number.buf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"0B\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.1fG\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.1fM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.1fK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @make_h_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_h_number(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @strcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @make_h_number.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = icmp ugt i64 %9, 2000000000
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = uitofp i64 %12 to double
  %14 = fdiv double %13, 1.000000e+09
  store double %14, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @make_h_number.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %15)
  br label %33

17:                                               ; preds = %8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ugt i64 %18, 2000000
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %2, align 8
  %22 = uitofp i64 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  store double %23, double* %3, align 8
  %24 = load double, double* %3, align 8
  %25 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @make_h_number.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %24)
  br label %32

26:                                               ; preds = %17
  %27 = load i64, i64* %2, align 8
  %28 = uitofp i64 %27 to double
  %29 = fdiv double %28, 1.000000e+03
  store double %29, double* %3, align 8
  %30 = load double, double* %3, align 8
  %31 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @make_h_number.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33, %6
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @make_h_number.buf, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
