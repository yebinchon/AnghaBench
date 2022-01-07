; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_Dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_Dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NetTrace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%c 0x%x\09\00", align 1
@prettydump = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%.2x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@stdout = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BYTES_PER_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dump(i8 signext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %102, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %9
  %13 = load i64, i64* @NetTrace, align 8
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i64, i8*, ...) @fprintf(i64 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i64, i64* @prettydump, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 16, %27 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %22, i64 %30
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %36, %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i64, i64* @NetTrace, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 255
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 42, i32 32
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 255
  %49 = call i32 (i64, i8*, ...) @fprintf(i64 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 16
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 16
  store i32 %56, i32* %8, align 4
  br label %86

57:                                               ; preds = %12
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 32
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 32, %63 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %58, i64 %66
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %72, %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i64, i64* @NetTrace, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 255
  %78 = call i32 (i64, i8*, ...) @fprintf(i64 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %52
  %87 = load i64, i64* @NetTrace, align 8
  %88 = load i64, i64* @stdout, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* @NetTrace, align 8
  %92 = call i32 (i64, i8*, ...) @fprintf(i64 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %96

93:                                               ; preds = %86
  %94 = load i64, i64* @NetTrace, align 8
  %95 = call i32 (i64, i8*, ...) @fprintf(i64 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* @NetTrace, align 8
  %101 = call i32 @fflush(i64 %100)
  br label %106

102:                                              ; preds = %96
  br label %9

103:                                              ; preds = %9
  %104 = load i64, i64* @NetTrace, align 8
  %105 = call i32 @fflush(i64 %104)
  br label %106

106:                                              ; preds = %103, %99
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
