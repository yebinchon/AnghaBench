; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtWriteTableToListing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtWriteTableToListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AslGbl_ListingFlag = common dso_local global i32 0, align 4
@AslGbl_TableLength = common dso_local global i32 0, align 4
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_LISTING_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0A%s: Length %d (0x%X)\0A\0A\00", align 1
@ACPI_RAW_TABLE_DATA_HEADER = common dso_local global i32 0, align 4
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtWriteTableToListing() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @AslGbl_ListingFlag, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %32

5:                                                ; preds = %0
  %6 = load i32, i32* @AslGbl_TableLength, align 4
  %7 = call i32* @UtLocalCalloc(i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %9 = call i32 @FlSeekFile(i32 %8, i32 0)
  %10 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @AslGbl_TableLength, align 4
  %13 = call i32 @FlReadFile(i32 %10, i32* %11, i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %15 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AcpiOsRedirectOutput(i32 %18)
  %20 = load i32, i32* @ACPI_RAW_TABLE_DATA_HEADER, align 4
  %21 = load i32, i32* @AslGbl_TableLength, align 4
  %22 = load i32, i32* @AslGbl_TableLength, align 4
  %23 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @AslGbl_TableLength, align 4
  %26 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %27 = call i32 @AcpiUtDumpBuffer(i32* %24, i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @AcpiOsRedirectOutput(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @ACPI_FREE(i32* %30)
  br label %32

32:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32* @UtLocalCalloc(i32) #1

declare dso_local i32 @FlSeekFile(i32, i32) #1

declare dso_local i32 @FlReadFile(i32, i32*, i32) #1

declare dso_local i32 @AcpiOsRedirectOutput(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32, i32, i32) #1

declare dso_local i32 @AcpiUtDumpBuffer(i32*, i32, i32, i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
