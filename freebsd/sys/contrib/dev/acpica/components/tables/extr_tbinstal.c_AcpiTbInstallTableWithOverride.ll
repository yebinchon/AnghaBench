; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbinstal.c_AcpiTbInstallTableWithOverride.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbinstal.c_AcpiTbInstallTableWithOverride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@AcpiGbl_DsdtIndex = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbInstallTableWithOverride(%struct.TYPE_7__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = call i32 @AcpiTbGetNextTableDescriptor(i64* %7, i32* null)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %53

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = call i32 @AcpiTbOverrideTable(%struct.TYPE_7__* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @AcpiTbInitTableDescriptor(i32* %23, i32 %26, i32 %29, %struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @AcpiTbPrintTableHeader(i32 %36, %struct.TYPE_8__* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @AcpiGbl_DsdtIndex, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %20
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AcpiUtSetIntegerWidth(i32 %51)
  br label %53

53:                                               ; preds = %13, %46, %20
  ret void
}

declare dso_local i32 @AcpiTbGetNextTableDescriptor(i64*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiTbOverrideTable(%struct.TYPE_7__*) #1

declare dso_local i32 @AcpiTbInitTableDescriptor(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @AcpiTbPrintTableHeader(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @AcpiUtSetIntegerWidth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
