; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_makeascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_makeascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeascii(i64 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  store i64* %12, i64** %8, align 8
  br label %13

13:                                               ; preds = %57, %3
  %14 = load i64*, i64** %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = icmp ult i64* %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @putc(i32 77, i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @putc(i32 45, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 127
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @putc(i32 94, i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 64
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @putc(i32 %40, i32* %41)
  br label %56

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 127, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @putc(i32 94, i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @putc(i32 63, i32* %49)
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @putc(i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %8, align 8
  br label %13

60:                                               ; preds = %13
  ret void
}

declare dso_local i32 @putc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
