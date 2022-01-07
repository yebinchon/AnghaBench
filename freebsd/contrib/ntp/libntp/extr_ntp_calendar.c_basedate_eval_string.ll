; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_basedate_eval_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_basedate_eval_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%4hu-%2hu-%2hu%n\00", align 1
@DAY_NTP_STARTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%lu%n\00", align 1
@INT32_MAX = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"basedate string \22%s\22 invalid, build date substituted!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @basedate_eval_string(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i8*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5, i32* %6, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 12
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 31
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ntpcal_edate_to_eradays(i32 %36, i32 %38, i32 %39)
  %41 = load i64, i64* @DAY_NTP_STARTS, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %2, align 8
  br label %67

43:                                               ; preds = %31, %28, %25, %22
  br label %62

44:                                               ; preds = %17, %1
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i8*, ...) @sscanf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %7, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @INT32_MAX, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %2, align 8
  br label %67

60:                                               ; preds = %54
  br label %62

61:                                               ; preds = %49, %44
  br label %62

62:                                               ; preds = %61, %60, %43
  %63 = load i32, i32* @LOG_WARNING, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @msyslog(i32 %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = call i64 (...) @basedate_eval_buildstamp()
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %62, %58, %34
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @ntpcal_edate_to_eradays(i32, i32, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*) #1

declare dso_local i64 @basedate_eval_buildstamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
