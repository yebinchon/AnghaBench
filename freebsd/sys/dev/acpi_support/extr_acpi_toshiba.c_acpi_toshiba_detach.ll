; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_toshiba_softc = type { i32, i32 }

@enable_fn_keys = common dso_local global i64 0, align 8
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_toshiba_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_toshiba_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_toshiba_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_toshiba_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.acpi_toshiba_softc* @device_get_softc(i32 %4)
  store %struct.acpi_toshiba_softc* %5, %struct.acpi_toshiba_softc** %3, align 8
  %6 = load i64, i64* @enable_fn_keys, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_toshiba_softc, %struct.acpi_toshiba_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %13 = load i32, i32* @acpi_toshiba_notify, align 4
  %14 = call i32 @AcpiRemoveNotifyHandler(i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_toshiba_softc, %struct.acpi_toshiba_softc* %16, i32 0, i32 0
  %18 = call i32 @sysctl_ctx_free(i32* %17)
  ret i32 0
}

declare dso_local %struct.acpi_toshiba_softc* @device_get_softc(i32) #1

declare dso_local i32 @AcpiRemoveNotifyHandler(i32, i32, i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
