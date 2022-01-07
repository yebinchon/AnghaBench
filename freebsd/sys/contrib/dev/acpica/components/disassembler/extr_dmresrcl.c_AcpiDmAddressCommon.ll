; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcl.c_AcpiDmAddressCommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcl.c_AcpiDmAddressCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"/**** Invalid Resource Type: 0x%X ****/\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Space (0x%2.2X, \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" 0x%2.2X,\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s (\00", align 1
@AcpiGbl_WordDecode = common dso_local global i32* null, align 8
@ACPI_MEMORY_RANGE = common dso_local global i32 0, align 4
@ACPI_IO_RANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" %s,\00", align 1
@AcpiGbl_RngDecode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @AcpiDmAddressCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDmAddressCommon(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @AcpiDmIndent(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 192
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %72

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @AcpiDmAddressPrefix(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @AcpiDmSpaceFlags(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %72

44:                                               ; preds = %32
  %45 = load i32*, i32** @AcpiGbl_WordDecode, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @ACPI_GET_2BIT_FLAG(i32 %46)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ACPI_MEMORY_RANGE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @AcpiDmMemoryFlags(i32 %55, i32 %56)
  br label %72

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @AcpiDmIoFlags(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ACPI_IO_RANGE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32*, i32** @AcpiGbl_RngDecode, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @ACPI_GET_2BIT_FLAG(i32 %66)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %29, %37, %71, %54
  ret void
}

declare dso_local i32 @AcpiDmIndent(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32) #1

declare dso_local i32 @AcpiDmAddressPrefix(i32) #1

declare dso_local i32 @AcpiDmSpaceFlags(i32) #1

declare dso_local i64 @ACPI_GET_2BIT_FLAG(i32) #1

declare dso_local i32 @AcpiDmMemoryFlags(i32, i32) #1

declare dso_local i32 @AcpiDmIoFlags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
