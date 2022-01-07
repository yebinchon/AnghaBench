; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_battery_ioctl_arg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_BATTERY_ALL_UNITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @acpi_battery_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_ioctl(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.acpi_battery_ioctl_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store %union.acpi_battery_ioctl_arg* null, %union.acpi_battery_ioctl_arg** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IOCPARM_LEN(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %union.acpi_battery_ioctl_arg*
  store %union.acpi_battery_ioctl_arg* %18, %union.acpi_battery_ioctl_arg** %7, align 8
  %19 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %20 = bitcast %union.acpi_battery_ioctl_arg* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ACPI_BATTERY_ALL_UNITS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @acpi_battery_find_dev(i32 %26)
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %95 [
    i32 128, label %31
    i32 131, label %35
    i32 130, label %51
    i32 129, label %83
  ]

31:                                               ; preds = %29
  %32 = call i32 (...) @acpi_battery_get_units()
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %8, align 4
  br label %97

35:                                               ; preds = %29
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ACPI_BATTERY_ALL_UNITS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %35
  %43 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %44 = bitcast %union.acpi_battery_ioctl_arg* %43 to %struct.TYPE_5__*
  %45 = call i32 @bzero(%struct.TYPE_5__* %44, i32 16)
  %46 = load i32*, i32** %10, align 8
  %47 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %48 = bitcast %union.acpi_battery_ioctl_arg* %47 to %struct.TYPE_5__*
  %49 = call i32 @acpi_battery_get_battinfo(i32* %46, %struct.TYPE_5__* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %42, %38
  br label %97

51:                                               ; preds = %29
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %56 = bitcast %union.acpi_battery_ioctl_arg* %55 to %struct.TYPE_5__*
  %57 = call i32 @bzero(%struct.TYPE_5__* %56, i32 16)
  %58 = load i32*, i32** %10, align 8
  %59 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %60 = bitcast %union.acpi_battery_ioctl_arg* %59 to %struct.TYPE_5__*
  %61 = call i32 @ACPI_BATT_GET_INFO(i32* %58, %struct.TYPE_5__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %63 = bitcast %union.acpi_battery_ioctl_arg* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @acpi_battery_clean_str(i32 %65, i32 4)
  %67 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %68 = bitcast %union.acpi_battery_ioctl_arg* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @acpi_battery_clean_str(i32 %70, i32 4)
  %72 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %73 = bitcast %union.acpi_battery_ioctl_arg* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @acpi_battery_clean_str(i32 %75, i32 4)
  %77 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %78 = bitcast %union.acpi_battery_ioctl_arg* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @acpi_battery_clean_str(i32 %80, i32 4)
  br label %82

82:                                               ; preds = %54, %51
  br label %97

83:                                               ; preds = %29
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %88 = bitcast %union.acpi_battery_ioctl_arg* %87 to %struct.TYPE_5__*
  %89 = call i32 @bzero(%struct.TYPE_5__* %88, i32 16)
  %90 = load i32*, i32** %10, align 8
  %91 = load %union.acpi_battery_ioctl_arg*, %union.acpi_battery_ioctl_arg** %7, align 8
  %92 = bitcast %union.acpi_battery_ioctl_arg* %91 to %struct.TYPE_5__*
  %93 = call i32 @ACPI_BATT_GET_STATUS(i32* %90, %struct.TYPE_5__* %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %86, %83
  br label %97

95:                                               ; preds = %29
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %94, %82, %50, %31
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @IOCPARM_LEN(i32) #1

declare dso_local i32* @acpi_battery_find_dev(i32) #1

declare dso_local i32 @acpi_battery_get_units(...) #1

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @acpi_battery_get_battinfo(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ACPI_BATT_GET_INFO(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @acpi_battery_clean_str(i32, i32) #1

declare dso_local i32 @ACPI_BATT_GET_STATUS(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
