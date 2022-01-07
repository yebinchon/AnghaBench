; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"device has no ivars\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @acpi_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
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
  br label %73

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %70 [
    i32 136, label %20
    i32 135, label %26
    i32 137, label %32
    i32 131, label %38
    i32 132, label %38
    i32 134, label %38
    i32 133, label %41
    i32 130, label %46
    i32 128, label %54
    i32 129, label %62
  ]

20:                                               ; preds = %18
  %21 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = bitcast i64* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = bitcast i64* %30 to i8**
  store i8* %29, i8** %31, align 8
  br label %72

32:                                               ; preds = %18
  %33 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = bitcast i64* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %72

38:                                               ; preds = %18, %18, %18
  %39 = load i64*, i64** %9, align 8
  %40 = bitcast i64* %39 to i32*
  store i32 -1, i32* %40, align 4
  br label %72

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @acpi_isa_get_logicalid(i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = bitcast i64* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %72

46:                                               ; preds = %18
  %47 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = load i64*, i64** %9, align 8
  %53 = bitcast i64* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %72

54:                                               ; preds = %18
  %55 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load i64*, i64** %9, align 8
  %61 = bitcast i64* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %72

62:                                               ; preds = %18
  %63 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 0
  %67 = and i32 %66, 255
  %68 = load i64*, i64** %9, align 8
  %69 = bitcast i64* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %72

70:                                               ; preds = %18
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %62, %54, %46, %41, %38, %32, %26, %20
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %14
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_isa_get_logicalid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
