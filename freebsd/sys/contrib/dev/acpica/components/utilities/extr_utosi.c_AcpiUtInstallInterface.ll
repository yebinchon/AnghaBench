; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtInstallInterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtInstallInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i8* }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_OSI_DYNAMIC = common dso_local global i32 0, align 4
@AcpiGbl_SupportedInterfaces = common dso_local global %struct.TYPE_4__* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtInstallInterface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @ACPI_ALLOCATE_ZEROED(i32 24)
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @strlen(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = call i8* @ACPI_ALLOCATE_ZEROED(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %11
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i32 @ACPI_FREE(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %11
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @strcpy(i8* %29, i32 %30)
  %32 = load i32, i32* @ACPI_OSI_DYNAMIC, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %26, %22, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_4__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
