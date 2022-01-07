; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_AslCompilerFileHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_AslCompilerFileHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@AslGbl_HexOutputFlag = common dso_local global i32 0, align 4
@HEX_OUTPUT_ASM = common dso_local global i32 0, align 4
@HEX_OUTPUT_C = common dso_local global i32 0, align 4
@HEX_OUTPUT_ASL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%sCompilation of \22%s\22 - %s%s\0A\00", align 1
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AslCompilerFileHeader(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %25 [
    i32 132, label %7
    i32 133, label %7
    i32 128, label %8
    i32 129, label %24
    i32 130, label %24
    i32 131, label %24
  ]

7:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %10 = load i32, i32* @HEX_OUTPUT_ASM, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

13:                                               ; preds = %8
  %14 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %15 = load i32, i32* @HEX_OUTPUT_C, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %19 = load i32, i32* @HEX_OUTPUT_ASL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %12
  br label %26

24:                                               ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %24, %23, %7
  %27 = call i32 @time(i32* %4)
  %28 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %28, %struct.tm** %3, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %32 = load i64, i64* @ASL_FILE_INPUT, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tm*, %struct.tm** %3, align 8
  %37 = call i32 @asctime(%struct.tm* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %35, i32 %37, i8* %38)
  %40 = load i32, i32* %2, align 4
  switch i32 %40, label %44 [
    i32 129, label %41
    i32 130, label %41
    i32 131, label %41
  ]

41:                                               ; preds = %26, %26, %26
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %45

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i32 @asctime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
