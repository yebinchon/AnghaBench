; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_expand_number.c_expand_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_expand_number.c_expand_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_number(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @errno, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* @errno, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strtoumax(i8* %12, i8** %6, i32 0)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @UINT64_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ERANGE, align 4
  store i32 %18, i32* @errno, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* @errno, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %56

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @tolower(i8 zeroext %28)
  switch i32 %29, label %39 [
    i32 101, label %30
    i32 112, label %31
    i32 116, label %32
    i32 103, label %33
    i32 109, label %34
    i32 107, label %35
    i32 98, label %36
    i32 0, label %36
  ]

30:                                               ; preds = %23
  store i32 60, i32* %9, align 4
  br label %41

31:                                               ; preds = %23
  store i32 50, i32* %9, align 4
  br label %41

32:                                               ; preds = %23
  store i32 40, i32* %9, align 4
  br label %41

33:                                               ; preds = %23
  store i32 30, i32* %9, align 4
  br label %41

34:                                               ; preds = %23
  store i32 20, i32* %9, align 4
  br label %41

35:                                               ; preds = %23
  store i32 10, i32* %9, align 4
  br label %41

36:                                               ; preds = %23, %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %56

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %56

41:                                               ; preds = %35, %34, %33, %32, %31, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @ERANGE, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %49, %39, %36, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
