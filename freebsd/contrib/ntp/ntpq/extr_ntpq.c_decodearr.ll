; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_decodearr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_decodearr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @decodearr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodearr(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [60 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %89, %4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %90

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @pgetc(i8* %26)
  %28 = call i64 @isspace(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @pgetc(i8* %40)
  %42 = call i64 @isspace(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %31, label %46

46:                                               ; preds = %44
  br label %89

47:                                               ; preds = %25
  %48 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %74, %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 60
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = icmp ne i8* %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @pgetc(i8* %69)
  %71 = call i64 @isspace(i32 %70)
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi i1 [ false, %63 ], [ %73, %68 ]
  br i1 %75, label %49, label %76

76:                                               ; preds = %74
  %77 = load i8*, i8** %10, align 8
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @decodetime(i8* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %91

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  br label %89

89:                                               ; preds = %83, %46
  br label %13

90:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %82
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @pgetc(i8*) #1

declare dso_local i32 @decodetime(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
