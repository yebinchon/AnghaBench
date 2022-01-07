; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmAddToExternalFileList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmAddToExternalFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AcpiGbl_ExternalFileList = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmAddToExternalFileList(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = call i8* @ACPI_ALLOCATE(i64 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %10
  %20 = call %struct.TYPE_4__* @ACPI_ALLOCATE_ZEROED(i32 16)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @ACPI_FREE(i8* %24)
  %26 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcpy(i8* %28, i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_ExternalFileList, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_ExternalFileList, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** @AcpiGbl_ExternalFileList, align 8
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %23, %17, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @ACPI_ALLOCATE(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
