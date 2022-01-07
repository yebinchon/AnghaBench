; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtDumpBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtDumpBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Output: [%3.3Xh %4.4d %3d] \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%24s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @DtDumpBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DtDumpBuffer(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %92, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %42, %37, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %28

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %89, %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 16
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %100

69:                                               ; preds = %60
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @isprint(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  br label %88

85:                                               ; preds = %69
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %57

92:                                               ; preds = %57
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 16
  store i32 %96, i32* %9, align 4
  br label %17

97:                                               ; preds = %17
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %66
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
