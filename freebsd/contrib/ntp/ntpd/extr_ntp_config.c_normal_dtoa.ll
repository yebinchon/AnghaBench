; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_normal_dtoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_normal_dtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double)* @normal_dtoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normal_dtoa(double %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store double %0, double* %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @LIB_GETBUF(i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @LIB_BUFLENGTH, align 4
  %11 = load double, double* %3, align 8
  %12 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 101)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* null, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 69)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* null, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %2, align 8
  br label %66

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  store i8 101, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 45, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %43, %36
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 48, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %38

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %2, align 8
  br label %66

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @LIB_BUFLENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub nsw i64 %56, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @strlcpy(i8* %53, i8* %54, i32 %63)
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %52, %50, %22
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
