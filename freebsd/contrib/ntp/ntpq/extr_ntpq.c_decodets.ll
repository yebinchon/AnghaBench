; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_decodets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_decodets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decodets(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 48
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 88
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %13
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @hextolfp(i8* %27, i32* %28)
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %19, %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %6, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 34, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 0, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %51 = call i32 @COUNTOF(i8* %50)
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %49, %53
  br label %55

55:                                               ; preds = %48, %43, %38
  %56 = phi i1 [ false, %43 ], [ false, %38 ], [ %54, %48 ]
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i8, i8* %58, align 1
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  %63 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 %61
  store i8 %60, i8* %63, align 1
  br label %38

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @rtdatetolfp(i8* %67, i32* %68)
  store i32 %69, i32* %3, align 4
  br label %104

70:                                               ; preds = %30
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 65
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 70
  br i1 %79, label %90, label %80

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sge i32 %83, 97
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 102
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %75
  %91 = load i8*, i8** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @hextolfp(i8* %91, i32* %92)
  store i32 %93, i32* %3, align 4
  br label %104

94:                                               ; preds = %85, %80
  %95 = load i8*, i8** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i64 @atolfp(i8* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %3, align 4
  br label %104

100:                                              ; preds = %94
  %101 = load i8*, i8** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @rtdatetolfp(i8* %101, i32* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %99, %90, %64, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @hextolfp(i8*, i32*) #1

declare dso_local i32 @COUNTOF(i8*) #1

declare dso_local i32 @rtdatetolfp(i8*, i32*) #1

declare dso_local i64 @atolfp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
