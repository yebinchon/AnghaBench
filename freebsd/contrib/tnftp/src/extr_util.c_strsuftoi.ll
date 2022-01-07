; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_strsuftoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_strsuftoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strsuftoi(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = call i32 @isdigit(i8 zeroext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strtol(i8* %13, i8** %4, i32 10)
  store i64 %14, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %58

30:                                               ; preds = %23, %17
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @tolower(i8 zeroext %33)
  switch i32 %34, label %45 [
    i32 0, label %35
    i32 98, label %35
    i32 107, label %36
    i32 109, label %39
    i32 103, label %42
  ]

35:                                               ; preds = %30, %30
  br label %46

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = shl i64 %37, 10
  store i64 %38, i64* %5, align 8
  br label %46

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = shl i64 %40, 20
  store i64 %41, i64* %5, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i64, i64* %5, align 8
  %44 = shl i64 %43, 30
  store i64 %44, i64* %5, align 8
  br label %46

45:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %58

46:                                               ; preds = %42, %39, %36, %35
  br label %47

47:                                               ; preds = %46, %12
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @INT_MAX, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  store i32 -1, i32* %2, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %45, %29, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
