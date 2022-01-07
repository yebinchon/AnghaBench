; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_icom.c_icom_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_icom.c_icom_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAD = common dso_local global i8 0, align 1
@PR = common dso_local global i8 0, align 1
@TX = common dso_local global i8 0, align 1
@V_SFREQ = common dso_local global i8 0, align 1
@FI = common dso_local global i8 0, align 1
@IC735 = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"icom_freq: write() failed: %m\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"icom_freq: only wrote %d of %d bytes.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icom_freq(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %12 = load i8, i8* @PAD, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = load i8, i8* @PR, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 1
  %16 = load i8, i8* @PR, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* @TX, align 1
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds i8, i8* %18, i64 1
  %21 = load i8, i8* @V_SFREQ, align 1
  store i8 %21, i8* %20, align 1
  %22 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* @FI, align 1
  store i8 %27, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %26, i64 1
  %29 = load i8, i8* @FI, align 1
  store i8 %29, i8* %28, align 1
  %30 = load i32, i32* %6, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 3
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IC735, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %38

37:                                               ; preds = %3
  store i32 5, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load double, double* %7, align 8
  %40 = fmul double %39, 1.000000e+06
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 6
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @doublefreq(double %40, i8* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 7
  %48 = call i32 @write(i32 %44, i8* %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 (i32, i8*, ...) @msyslog(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %67

54:                                               ; preds = %38
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 7
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 7
  %64 = call i32 (i32, i8*, ...) @msyslog(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  store i32 1, i32* %4, align 4
  br label %67

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %59, %51
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @doublefreq(double, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
