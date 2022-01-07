; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_scan_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_scan_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_scan_ctx = type { i32*, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"children\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32* null, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@acpi_device_scan_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i8*)* @acpi_device_scan_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_scan_children(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.acpi_device_scan_ctx, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call i64 @acpi_disabled(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %6, align 4
  br label %42

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** @ACPI_ROOT_OBJECT, align 8
  store i32* %22, i32** %12, align 8
  br label %30

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @acpi_get_handle(i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %13, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %13, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds %struct.acpi_device_scan_ctx, %struct.acpi_device_scan_ctx* %13, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @acpi_device_scan_cb, align 4
  %41 = call i32 @AcpiWalkNamespace(i32 %37, i32* %38, i32 %39, i32 %40, i32* null, %struct.acpi_device_scan_ctx* %13, i32* null)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %30, %27, %16
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32* @acpi_get_handle(i32*) #1

declare dso_local i32 @AcpiWalkNamespace(i32, i32*, i32, i32, i32*, %struct.acpi_device_scan_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
