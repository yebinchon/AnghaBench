; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_eject_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_eject_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"ejecting device for %s\0A\00", align 1
@Giant = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_dock_eject_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dock_eject_child(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
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
  %13 = bitcast i8* %12 to i32**
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @acpi_get_handle(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @acpi_dock_is_ejd_device(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %45

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @acpi_device_get_parent_softc(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @acpi_name(i32 %26)
  %28 = call i32 @ACPI_VPRINT(i32* %23, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32* @acpi_get_device(i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @device_is_attached(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = call i32 @mtx_lock(i32* @Giant)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @device_detach(i32* %39)
  %41 = call i32 @mtx_unlock(i32* @Giant)
  br label %42

42:                                               ; preds = %37, %33, %22
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @acpi_SetInteger(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* @AE_OK, align 4
  ret i32 %46
}

declare dso_local i32 @acpi_get_handle(i32*) #1

declare dso_local i32 @acpi_dock_is_ejd_device(i32, i32) #1

declare dso_local i32 @ACPI_VPRINT(i32*, i32, i8*, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32*) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32* @acpi_get_device(i32) #1

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_detach(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @acpi_SetInteger(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
