; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmUpdateResourceName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmUpdateResourceName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@ACPI_DEFAULT_RESNAME = common dso_local global i32 0, align 4
@AcpiGbl_Prefix = common dso_local global i8* null, align 8
@AcpiGbl_NextPrefix = common dso_local global i64 0, align 8
@AcpiGbl_NextResourceId = common dso_local global i32 0, align 4
@ACPI_NUM_RES_PREFIX = common dso_local global i64 0, align 8
@UINT32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @AcpiDmUpdateResourceName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDmUpdateResourceName(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACPI_DEFAULT_RESNAME, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %50

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 95, i8* %18, align 16
  %19 = load i8*, i8** @AcpiGbl_Prefix, align 8
  %20 = load i64, i64* @AcpiGbl_NextPrefix, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* @AcpiGbl_NextResourceId, align 4
  %25 = call signext i8 @AcpiUtHexToAsciiChar(i32 %24, i32 4)
  %26 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %25, i8* %26, align 2
  %27 = load i32, i32* @AcpiGbl_NextResourceId, align 4
  %28 = call signext i8 @AcpiUtHexToAsciiChar(i32 %27, i32 0)
  %29 = getelementptr inbounds i8, i8* %9, i64 3
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* @AcpiGbl_NextResourceId, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @AcpiGbl_NextResourceId, align 4
  %32 = load i32, i32* @AcpiGbl_NextResourceId, align 4
  %33 = icmp sge i32 %32, 256
  br i1 %33, label %34, label %42

34:                                               ; preds = %17
  store i32 0, i32* @AcpiGbl_NextResourceId, align 4
  %35 = load i64, i64* @AcpiGbl_NextPrefix, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @AcpiGbl_NextPrefix, align 8
  %37 = load i64, i64* @AcpiGbl_NextPrefix, align 8
  %38 = load i64, i64* @ACPI_NUM_RES_PREFIX, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 0, i64* @AcpiGbl_NextPrefix, align 8
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* @UINT32, align 4
  %44 = getelementptr inbounds i8, i8* %9, i64 0
  %45 = call i32* @ACPI_CAST_PTR(i32 %43, i8* %44)
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %16
  %51 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %54 [
    i32 0, label %53
    i32 1, label %53
  ]

53:                                               ; preds = %50, %50
  ret void

54:                                               ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local signext i8 @AcpiUtHexToAsciiChar(i32, i32) #2

declare dso_local i32* @ACPI_CAST_PTR(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
