; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbGetNextTableDescriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbGetNextTableDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32* }

@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiTbGetNextTableDescriptor(i64* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = call i32 (...) @AcpiTbResizeRootTableList()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %23 = load i64*, i64** %4, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %4, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32**, i32*** %5, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @AcpiTbResizeRootTableList(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
