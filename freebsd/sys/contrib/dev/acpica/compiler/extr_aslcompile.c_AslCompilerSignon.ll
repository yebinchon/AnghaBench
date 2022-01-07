; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_AslCompilerSignon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_AslCompilerSignon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@AslGbl_HexOutputFlag = common dso_local global i32 0, align 4
@HEX_OUTPUT_ASM = common dso_local global i32 0, align 4
@HEX_OUTPUT_C = common dso_local global i32 0, align 4
@HEX_OUTPUT_ASL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@AcpiGbl_DisasmFlag = common dso_local global i64 0, align 8
@AML_DISASSEMBLER_NAME = common dso_local global i8* null, align 8
@ASL_COMPILER_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AslCompilerSignon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %25 [
    i32 132, label %6
    i32 133, label %6
    i32 128, label %7
    i32 129, label %24
    i32 130, label %24
    i32 131, label %24
  ]

6:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %9 = load i32, i32* @HEX_OUTPUT_ASM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %23

12:                                               ; preds = %7
  %13 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %14 = load i32, i32* @HEX_OUTPUT_C, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @AslGbl_HexOutputFlag, align 4
  %18 = load i32, i32* @HEX_OUTPUT_ASL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = call i32 (i32, i8*, ...) @FlPrintFile(i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %11
  br label %26

24:                                               ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %24, %23, %6
  %27 = load i64, i64* @AcpiGbl_DisasmFlag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** @AML_DISASSEMBLER_NAME, align 8
  store i8* %30, i8** %4, align 8
  br label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @ASL_COMPILER_NAME, align 8
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %2, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @ACPI_COMMON_HEADER(i8* %38, i8* %39)
  %41 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %37, i8* %40)
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i8* @ACPI_COMMON_HEADER(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
