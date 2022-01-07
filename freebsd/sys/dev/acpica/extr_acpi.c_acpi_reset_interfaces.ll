; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_reset_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_reset_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_interface = type { i32, i32* }

@acpi_install_interface = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to install _OSI(\22%s\22): %s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"installed _OSI(\22%s\22)\0A\00", align 1
@acpi_remove_interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to remove _OSI(\22%s\22): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"removed _OSI(\22%s\22)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_reset_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_reset_interfaces(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_interface, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @acpi_install_interface, align 4
  %7 = call i64 @acpi_parse_interfaces(i32 %6, %struct.acpi_interface* %3)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %51, %9
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AcpiInstallInterface(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AcpiFormatException(i32 %34)
  %36 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  br label %50

37:                                               ; preds = %15
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40, %37
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %10

54:                                               ; preds = %10
  %55 = call i32 @acpi_free_interfaces(%struct.acpi_interface* %3)
  br label %56

56:                                               ; preds = %54, %1
  %57 = load i32, i32* @acpi_remove_interface, align 4
  %58 = call i64 @acpi_parse_interfaces(i32 %57, %struct.acpi_interface* %3)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %102, %60
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AcpiRemoveInterface(i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %66
  %78 = load i32, i32* %2, align 4
  %79 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @AcpiFormatException(i32 %85)
  %87 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86)
  br label %101

88:                                               ; preds = %66
  %89 = load i64, i64* @bootverbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %3, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %91, %88
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %61

105:                                              ; preds = %61
  %106 = call i32 @acpi_free_interfaces(%struct.acpi_interface* %3)
  br label %107

107:                                              ; preds = %105, %56
  ret void
}

declare dso_local i64 @acpi_parse_interfaces(i32, %struct.acpi_interface*) #1

declare dso_local i32 @AcpiInstallInterface(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @acpi_free_interfaces(%struct.acpi_interface*) #1

declare dso_local i32 @AcpiRemoveInterface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
