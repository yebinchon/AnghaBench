; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbutils.c_AcpiTbCheckDsdtHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbutils.c_AcpiTbCheckDsdtHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@AcpiGbl_OriginalDsdtHeader = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AcpiGbl_DSDT = common dso_local global %struct.TYPE_4__* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"The DSDT has been corrupted or replaced - old, new headers below\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbCheckDsdtHeader() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_OriginalDsdtHeader, i32 0, i32 0), align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_DSDT, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %1, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_OriginalDsdtHeader, i32 0, i32 1), align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_DSDT, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6, %0
  %13 = load i32, i32* @AE_INFO, align 4
  %14 = call i32 @ACPI_BIOS_ERROR(i32 ptrtoint ([65 x i8]* @.str to i32))
  %15 = call i32 @AcpiTbPrintTableHeader(i32 0, %struct.TYPE_4__* @AcpiGbl_OriginalDsdtHeader)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_DSDT, align 8
  %17 = call i32 @AcpiTbPrintTableHeader(i32 0, %struct.TYPE_4__* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_DSDT, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_OriginalDsdtHeader, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_DSDT, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_OriginalDsdtHeader, i32 0, i32 1), align 8
  br label %24

24:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @ACPI_BIOS_ERROR(i32) #1

declare dso_local i32 @AcpiTbPrintTableHeader(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
