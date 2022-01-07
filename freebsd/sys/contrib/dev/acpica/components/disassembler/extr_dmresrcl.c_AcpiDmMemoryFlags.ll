; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcl.c_AcpiDmMemoryFlags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcl.c_AcpiDmMemoryFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%s, %s, %s, %s, %s, %s,\00", align 1
@AcpiGbl_ConsumeDecode = common dso_local global i32* null, align 8
@AcpiGbl_DecDecode = common dso_local global i32* null, align 8
@AcpiGbl_MinDecode = common dso_local global i32* null, align 8
@AcpiGbl_MaxDecode = common dso_local global i32* null, align 8
@AcpiGbl_MemDecode = common dso_local global i32* null, align 8
@AcpiGbl_RwDecode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AcpiDmMemoryFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDmMemoryFlags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @AcpiGbl_ConsumeDecode, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @ACPI_GET_1BIT_FLAG(i32 %6)
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @AcpiGbl_DecDecode, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ACPI_EXTRACT_1BIT_FLAG(i32 %11, i32 1)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @AcpiGbl_MinDecode, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @ACPI_EXTRACT_1BIT_FLAG(i32 %16, i32 2)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @AcpiGbl_MaxDecode, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @ACPI_EXTRACT_1BIT_FLAG(i32 %21, i32 3)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @AcpiGbl_MemDecode, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @ACPI_EXTRACT_2BIT_FLAG(i32 %26, i32 1)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @AcpiGbl_RwDecode, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @ACPI_GET_1BIT_FLAG(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %19, i32 %24, i32 %29, i32 %34)
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ACPI_GET_1BIT_FLAG(i32) #1

declare dso_local i64 @ACPI_EXTRACT_1BIT_FLAG(i32, i32) #1

declare dso_local i64 @ACPI_EXTRACT_2BIT_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
