; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtInterfaceTerminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtInterfaceTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AcpiGbl_SupportedInterfaces = common dso_local global %struct.TYPE_4__* null, align 8
@ACPI_OSI_DYNAMIC = common dso_local global i32 0, align 4
@ACPI_OSI_DEFAULT_INVALID = common dso_local global i32 0, align 4
@ACPI_OSI_INVALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtInterfaceTerminate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %5 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %6 = call i32 @AcpiOsAcquireMutex(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %61

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %3, align 8
  br label %14

14:                                               ; preds = %55, %12
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_OSI_DYNAMIC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @ACPI_FREE(%struct.TYPE_4__* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = call i32 @ACPI_FREE(%struct.TYPE_4__* %32)
  br label %55

34:                                               ; preds = %17
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ACPI_OSI_DEFAULT_INVALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %54

47:                                               ; preds = %34
  %48 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %3, align 8
  br label %14

57:                                               ; preds = %14
  %58 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %59 = call i32 @AcpiOsReleaseMutex(i32 %58)
  %60 = load i32, i32* @AE_OK, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %57, %10
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @AcpiOsAcquireMutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_4__*) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
