; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDoDisassembly.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDoDisassembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Could not initialize ACPI Table Manager, %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_DmOpt_Disasm = common dso_local global i32 0, align 4
@AslToFile = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@AslGbl_OutputFilenamePrefix = common dso_local global i32 0, align 4
@AslGbl_DoCompile = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"\0ACompiling \22%s\22\0A\00", align 1
@AE_CTRL_CONTINUE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslDoDisassembly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @AcpiAllocateRootTable(i32 4)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @ACPI_FAILURE(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @AcpiFormatException(i32 %8)
  %10 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %46

12:                                               ; preds = %0
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* @AcpiGbl_DmOpt_Disasm, align 4
  %14 = load i32, i32* @AslToFile, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %16 = load i64, i64* @ASL_FILE_INPUT, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AslGbl_OutputFilenamePrefix, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %22 = load i64, i64* @ASL_FILE_INPUT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @AdAmlDisassemble(i32 %14, i32 %19, i32 %20, i32* %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %46

31:                                               ; preds = %12
  %32 = call i32 @AcpiDmUnresolvedWarning(i32 0)
  %33 = call i32 (...) @AeClearErrorLog()
  %34 = load i64, i64* @AslGbl_DoCompile, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %38 = load i64, i64* @ASL_FILE_INPUT, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @AE_CTRL_CONTINUE, align 4
  store i32 %43, i32* %1, align 4
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @AE_OK, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %44, %36, %29, %7
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @AcpiAllocateRootTable(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AdAmlDisassemble(i32, i32, i32, i32*) #1

declare dso_local i32 @AcpiDmUnresolvedWarning(i32) #1

declare dso_local i32 @AeClearErrorLog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
