; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"patterns must be specified as hex digits\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x\00", align 1
@MAXDATALEN = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@F_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PATTERN: 0x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i8*, i8** %9, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @isxdigit(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15
  %44 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %80, %47
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* @MAXDATALEN, align 4
  %52 = sub nsw i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = icmp ule i64 %50, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8 %69, i8* %75, align 1
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %48

84:                                               ; preds = %48
  br label %85

85:                                               ; preds = %84, %26
  %86 = load i32, i32* @options, align 4
  %87 = load i32, i32* @F_QUIET, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %105, %90
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = and i32 %102, 255
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %92

108:                                              ; preds = %92
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %85
  ret void
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
