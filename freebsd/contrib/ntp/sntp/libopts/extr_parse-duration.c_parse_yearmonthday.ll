; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_yearmonthday.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_yearmonthday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BAD_TIME = common dso_local global i64 0, align 8
@NUL = common dso_local global i8 0, align 1
@SEC_PER_YEAR = common dso_local global i32 0, align 4
@SEC_PER_MONTH = common dso_local global i32 0, align 4
@SEC_PER_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_yearmonthday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_yearmonthday(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp ne i32 %8, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* @errno, align 4
  %12 = load i64, i64* @BAD_TIME, align 8
  store i64 %12, i64* %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @memcpy(i8* %14, i8* %15, i32 4)
  %17 = load i8, i8* @NUL, align 1
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8* %19, i8** %6, align 8
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = load i32, i32* @SEC_PER_YEAR, align 4
  %23 = call i64 @parse_scaled_value(i64 0, i8** %6, i8* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  %27 = call i32 @memcpy(i8* %24, i8* %26, i32 2)
  %28 = load i8, i8* @NUL, align 1
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8* %30, i8** %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i32, i32* @SEC_PER_MONTH, align 4
  %35 = call i64 @parse_scaled_value(i64 %31, i8** %6, i8* %33, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = call i32 @memcpy(i8* %36, i8* %38, i32 2)
  %40 = load i8, i8* @NUL, align 1
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8* %42, i8** %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i32, i32* @SEC_PER_DAY, align 4
  %47 = call i64 @parse_scaled_value(i64 %43, i8** %6, i8* %45, i32 %46)
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %13, %10
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @parse_scaled_value(i64, i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
