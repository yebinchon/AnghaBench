; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_queryhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_queryhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numhosts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpq_queryhost(i16 zeroext %0, i16 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store i16 %1, i16* %7, align 2
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @numhosts, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i16, i16* %6, align 2
  %18 = load i16, i16* %7, align 2
  %19 = call i32 @doquery(i16 zeroext %17, i16 zeroext %18, i32 0, i32 0, i8* null, i32* %13, i64* %12, i8** %10)
  store i32 %19, i32* %11, align 4
  br label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

21:                                               ; preds = %16
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 0, i32* %5, align 4
  br label %43

28:                                               ; preds = %24
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %12, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %27, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @doquery(i16 zeroext, i16 zeroext, i32, i32, i8*, i32*, i64*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
