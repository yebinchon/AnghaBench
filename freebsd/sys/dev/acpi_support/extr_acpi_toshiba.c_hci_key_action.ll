; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_hci_key_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_hci_key_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_toshiba_softc = type { i32 }

@toshiba = common dso_local global i32 0, align 4
@HCI_GET = common dso_local global i32 0, align 4
@HCI_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_toshiba_softc*, i32, i32)* @hci_key_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_key_action(%struct.acpi_toshiba_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_toshiba_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_toshiba_softc* %0, %struct.acpi_toshiba_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @toshiba, align 4
  %9 = call i32 @ACPI_SERIAL_ASSERT(i32 %8)
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %71 [
    i32 130, label %11
    i32 129, label %24
    i32 131, label %37
    i32 128, label %49
    i32 132, label %60
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HCI_GET, align 4
  %14 = call i32 @hci_lcd_brightness(i32 %12, i32 %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %23

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @HCI_SET, align 4
  %22 = call i32 @hci_lcd_brightness(i32 %20, i32 %21, i32* %7)
  br label %23

23:                                               ; preds = %19, %18
  br label %71

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HCI_GET, align 4
  %27 = call i32 @hci_lcd_brightness(i32 %25, i32 %26, i32* %7)
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = icmp eq i32 %28, 7
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 7, i32* %7, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HCI_SET, align 4
  %35 = call i32 @hci_lcd_brightness(i32 %33, i32 %34, i32* %7)
  br label %36

36:                                               ; preds = %32, %31
  br label %71

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HCI_GET, align 4
  %40 = call i32 @hci_video_output(i32 %38, i32 %39, i32* %7)
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = srem i32 %42, 7
  store i32 %43, i32* %7, align 4
  %44 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_toshiba_softc, %struct.acpi_toshiba_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HCI_SET, align 4
  %48 = call i32 @hci_video_output(i32 %46, i32 %47, i32* %7)
  br label %71

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @HCI_GET, align 4
  %52 = call i32 @hci_lcd_backlight(i32 %50, i32 %51, i32* %7)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @HCI_SET, align 4
  %59 = call i32 @hci_lcd_backlight(i32 %57, i32 %58, i32* %7)
  br label %71

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @HCI_GET, align 4
  %63 = call i32 @hci_force_fan(i32 %61, i32 %62, i32* %7)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @HCI_SET, align 4
  %70 = call i32 @hci_force_fan(i32 %68, i32 %69, i32* %7)
  br label %71

71:                                               ; preds = %3, %60, %49, %37, %36, %23
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @hci_lcd_brightness(i32, i32, i32*) #1

declare dso_local i32 @hci_video_output(i32, i32, i32*) #1

declare dso_local i32 @hci_lcd_backlight(i32, i32, i32*) #1

declare dso_local i32 @hci_force_fan(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
