; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdDisassemblerHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdDisassemblerHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@AML_DISASSEMBLER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@ACPI_IS_AML_TABLE = common dso_local global i64 0, align 8
@AcpiGbl_CstyleDisassembly = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c" * Disassembling to symbolic ASL+ operators\0A *\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c" * Disassembling to non-symbolic legacy ASL operators\0A *\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" * Disassembly of %s, %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdDisassemblerHeader(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @time(i32* %5)
  %7 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @AML_DISASSEMBLER_NAME, align 4
  %9 = call i8* @ACPI_COMMON_HEADER(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ACPI_IS_AML_TABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @AcpiGbl_CstyleDisassembly, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %21

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @ctime(i32* %5)
  %25 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %23, i32 %24)
  %26 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i8* @ACPI_COMMON_HEADER(i32, i8*) #1

declare dso_local i32 @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
