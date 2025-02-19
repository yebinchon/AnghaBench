; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"device has no ivars\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bad ivar write request (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @acpi_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.acpi_device* @device_get_ivars(i32 %11)
  store %struct.acpi_device* %12, %struct.acpi_device** %10, align 8
  %13 = icmp eq %struct.acpi_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %35 [
    i32 129, label %20
    i32 128, label %25
    i32 130, label %30
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %39

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %39

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %30, %25, %20
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %35, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
