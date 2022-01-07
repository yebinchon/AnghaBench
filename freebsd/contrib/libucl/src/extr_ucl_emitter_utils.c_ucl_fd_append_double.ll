; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_fd_append_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_fd_append_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.1lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*lg\00", align 1
@DBL_DIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i8*)* @ucl_fd_append_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_fd_append_double(double %0, i8* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [64 x i8], align 16
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store double 0x3E7AD7F29ABCAF48, double* %6, align 8
  %11 = load double, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = fptosi double %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = fcmp oeq double %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %18 = load double, double* %3, align 8
  %19 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %17, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %18)
  br label %39

20:                                               ; preds = %2
  %21 = load double, double* %3, align 8
  %22 = load double, double* %3, align 8
  %23 = fptosi double %22 to i32
  %24 = sitofp i32 %23 to double
  %25 = fsub double %21, %24
  %26 = call double @fabs(double %25)
  %27 = fcmp olt double %26, 0x3E7AD7F29ABCAF48
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* @DBL_DIG, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double, double* %3, align 8
  %33 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %31, double %32)
  br label %38

34:                                               ; preds = %20
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %36 = load double, double* %3, align 8
  %37 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %35, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @write(i32 %40, i8* %41, i32 %43)
  ret i32 %44
}

declare dso_local i32 @snprintf(i8*, i32, i8*, double, ...) #1

declare dso_local double @fabs(double) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
