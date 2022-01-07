; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmDisasmByteList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmDisasmByteList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_BUFFER_BYTES_PER_LINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"/* %04X */ \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" 0x%2.2X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"  // \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDisasmByteList(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %97

14:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %93, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @AcpiDmIndent(i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @ACPI_BUFFER_BYTES_PER_LINE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %19
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @ACPI_BUFFER_BYTES_PER_LINE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %57

42:                                               ; preds = %33
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %56

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %29

60:                                               ; preds = %29
  %61 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %88, %60
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @ACPI_BUFFER_BYTES_PER_LINE, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %91

74:                                               ; preds = %66
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @isprint(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  br label %87

85:                                               ; preds = %74
  %86 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %62

91:                                               ; preds = %73, %62
  %92 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91
  %94 = load i64, i64* @ACPI_BUFFER_BYTES_PER_LINE, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %7, align 8
  br label %15

97:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @AcpiDmIndent(i64) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i64 @isprint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
