; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_insert_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_insert_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"inserting device for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"error: %s has no associated device\0A\00", align 1
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_dock_attach_later = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@AcpiNsInitOneDevice = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_dock_insert_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dock_insert_child(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @acpi_get_handle(i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @acpi_dock_is_ejd_device(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %42

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @acpi_device_get_parent_softc(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @acpi_name(i32 %25)
  %27 = call i32 @ACPI_VPRINT(i32* %22, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @acpi_get_device(i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @acpi_name(i32 %34)
  %36 = call i32 @device_printf(i32* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %42

37:                                               ; preds = %21
  %38 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %39 = load i32, i32* @acpi_dock_attach_later, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @AcpiOsExecute(i32 %38, i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %32, %20
  %43 = load i32, i32* @AE_OK, align 4
  ret i32 %43
}

declare dso_local i32 @acpi_get_handle(i32*) #1

declare dso_local i32 @acpi_dock_is_ejd_device(i32, i32) #1

declare dso_local i32 @ACPI_VPRINT(i32*, i32, i8*, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32*) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32* @acpi_get_device(i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
