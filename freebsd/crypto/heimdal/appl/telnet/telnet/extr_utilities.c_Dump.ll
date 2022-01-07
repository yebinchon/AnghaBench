; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_utilities.c_Dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_utilities.c_Dump.c"
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

9:                                                ; preds = %92, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %93

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
  br i1 %20, label %21, label %52

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @min(i32 %23, i32 16)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %31, %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i64, i64* @NetTrace, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 255
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 42, i32 32
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = call i32 (i64, i8*, ...) @fprintf(i64 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 16
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 16
  store i32 %51, i32* %8, align 4
  br label %76

52:                                               ; preds = %12
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @min(i32 %54, i32 32)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %62, %52
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i64, i64* @NetTrace, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 255
  %68 = call i32 (i64, i8*, ...) @fprintf(i64 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  br label %58

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 32
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %47
  %77 = load i64, i64* @NetTrace, align 8
  %78 = load i64, i64* @stdout, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, i64* @NetTrace, align 8
  %82 = call i32 (i64, i8*, ...) @fprintf(i64 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %86

83:                                               ; preds = %76
  %84 = load i64, i64* @NetTrace, align 8
  %85 = call i32 (i64, i8*, ...) @fprintf(i64 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* @NetTrace, align 8
  %91 = call i32 @fflush(i64 %90)
  br label %96

92:                                               ; preds = %86
  br label %9

93:                                               ; preds = %9
  %94 = load i64, i64* @NetTrace, align 8
  %95 = call i32 @fflush(i64 %94)
  br label %96

96:                                               ; preds = %93, %89
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
