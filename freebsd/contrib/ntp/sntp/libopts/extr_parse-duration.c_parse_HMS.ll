; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_HMS.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_HMS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_PER_HR = common dso_local global i32 0, align 4
@SEC_PER_MIN = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BAD_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @parse_HMS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_HMS(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = call i64* @strchr(i64* %6, i8 signext 72)
  store i64* %7, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64*, i64** %5, align 8
  %12 = load i32, i32* @SEC_PER_HR, align 4
  %13 = call i64 @parse_scaled_value(i64 0, i64** %3, i64* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** %3, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i64*, i64** %3, align 8
  %18 = call i64* @strchr(i64* %17, i8 signext 77)
  store i64* %18, i64** %5, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* @SEC_PER_MIN, align 4
  %25 = call i64 @parse_scaled_value(i64 %22, i64** %3, i64* %23, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %3, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i64*, i64** %3, align 8
  %30 = call i64* @strchr(i64* %29, i8 signext 83)
  store i64* %30, i64** %5, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i64 @parse_scaled_value(i64 %34, i64** %3, i64* %35, i32 1)
  store i64 %36, i64* %4, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %3, align 8
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %46, %39
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i8
  %44 = call i64 @isspace(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %3, align 8
  br label %40

49:                                               ; preds = %40
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NUL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* @errno, align 4
  %56 = load i64, i64* @BAD_TIME, align 8
  store i64 %56, i64* %2, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i64* @strchr(i64*, i8 signext) #1

declare dso_local i64 @parse_scaled_value(i64, i64**, i64*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
