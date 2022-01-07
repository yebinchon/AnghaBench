; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, double*, i32)* @ctl_putarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_putarray(i8* %0, double* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [200 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  store i8* %12, i8** %7, align 8
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 200
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %56, %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @NTP_SHIFT, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = load double*, double** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fmul double %34, 1.000000e+03
  %36 = call i32 @snprintf(i8* %24, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %21
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ult i64 %41, %46
  br label %48

48:                                               ; preds = %39, %21
  %49 = phi i1 [ false, %21 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @INSIST(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %16, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = call i32 @ctl_putunqstr(i8* %61, i8* %62, i64 %67)
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, double) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
