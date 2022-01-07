; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_scaled_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_scaled_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAD_TIME = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64**, i64*, i32)* @parse_scaled_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_scaled_value(i64 %0, i64** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64**, i64*** %7, align 8
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BAD_TIME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %5, align 8
  br label %50

19:                                               ; preds = %4
  store i64 0, i64* @errno, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = call i64 @str_const_to_ul(i64* %20, i64** %10, i32 10)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @BAD_TIME, align 8
  store i64 %25, i64* %5, align 8
  br label %50

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %33, %26
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i8
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64*, i64** %10, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %10, align 8
  br label %27

36:                                               ; preds = %27
  %37 = load i64*, i64** %10, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @EINVAL, align 8
  store i64 %41, i64* @errno, align 8
  %42 = load i64, i64* @BAD_TIME, align 8
  store i64 %42, i64* %5, align 8
  br label %50

43:                                               ; preds = %36
  %44 = load i64*, i64** %10, align 8
  %45 = load i64**, i64*** %7, align 8
  store i64* %44, i64** %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @scale_n_add(i64 %46, i64 %47, i32 %48)
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %43, %40, %24, %17
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @str_const_to_ul(i64*, i64**, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @scale_n_add(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
