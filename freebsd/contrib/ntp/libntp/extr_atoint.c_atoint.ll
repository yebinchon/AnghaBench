; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_atoint.c_atoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_atoint.c_atoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atoint(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 56, i32* %9, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 55, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %75

25:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @isdigit(i8 zeroext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %75

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %38, 214748364
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 214748364
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %75

50:                                               ; preds = %43, %40
  %51 = load i64, i64* %6, align 8
  %52 = shl i64 %51, 3
  %53 = load i64, i64* %6, align 8
  %54 = shl i64 %53, 1
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 48
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %26

64:                                               ; preds = %26
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = sub nsw i64 0, %68
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load i64, i64* %6, align 8
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %67
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %49, %36, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
