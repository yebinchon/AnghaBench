; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_hkey_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_hkey_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_panasonic_softc = type { i32 }
%struct.acpi_softc = type { i32 }

@panasonic = common dso_local global i32 0, align 4
@HKEY_GET = common dso_local global i32 0, align 4
@HKEY_LCD_BRIGHTNESS_DIV = common dso_local global i32 0, align 4
@HKEY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_panasonic_softc*, i32, i32)* @acpi_panasonic_hkey_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_panasonic_hkey_action(%struct.acpi_panasonic_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_panasonic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_panasonic_softc* %0, %struct.acpi_panasonic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.acpi_softc* @acpi_device_get_parent_softc(i32 %13)
  store %struct.acpi_softc* %14, %struct.acpi_softc** %7, align 8
  %15 = load i32, i32* @panasonic, align 4
  %16 = call i32 @ACPI_SERIAL_ASSERT(i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %95 [
    i32 1, label %18
    i32 2, label %49
    i32 4, label %80
    i32 7, label %92
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HKEY_GET, align 4
  %21 = call i32 @hkey_lcd_brightness_max(i32 %19, i32 %20, i32* %9)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @HKEY_GET, align 4
  %24 = call i32 @hkey_lcd_brightness_min(i32 %22, i32 %23, i32* %10)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HKEY_GET, align 4
  %27 = call i32 @hkey_lcd_brightness(i32 %25, i32 %26, i32* %8)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HKEY_LCD_BRIGHTNESS_DIV, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @HKEY_SET, align 4
  %48 = call i32 @hkey_lcd_brightness(i32 %46, i32 %47, i32* %8)
  br label %95

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @HKEY_GET, align 4
  %52 = call i32 @hkey_lcd_brightness_max(i32 %50, i32 %51, i32* %9)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @HKEY_GET, align 4
  %55 = call i32 @hkey_lcd_brightness_min(i32 %53, i32 %54, i32* %10)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @HKEY_GET, align 4
  %58 = call i32 @hkey_lcd_brightness(i32 %56, i32 %57, i32* %8)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @HKEY_LCD_BRIGHTNESS_DIV, align 4
  %61 = sdiv i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %8, align 4
  br label %76

69:                                               ; preds = %49
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @HKEY_SET, align 4
  %79 = call i32 @hkey_lcd_brightness(i32 %77, i32 %78, i32* %8)
  br label %95

80:                                               ; preds = %3
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @HKEY_GET, align 4
  %83 = call i32 @hkey_sound_mute(i32 %81, i32 %82, i32* %8)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %88

87:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @HKEY_SET, align 4
  %91 = call i32 @hkey_sound_mute(i32 %89, i32 %90, i32* %8)
  br label %95

92:                                               ; preds = %3
  %93 = load %struct.acpi_softc*, %struct.acpi_softc** %7, align 8
  %94 = call i32 @acpi_event_sleep_button_sleep(%struct.acpi_softc* %93)
  br label %95

95:                                               ; preds = %3, %92, %88, %76, %45
  ret void
}

declare dso_local %struct.acpi_softc* @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @hkey_lcd_brightness_max(i32, i32, i32*) #1

declare dso_local i32 @hkey_lcd_brightness_min(i32, i32, i32*) #1

declare dso_local i32 @hkey_lcd_brightness(i32, i32, i32*) #1

declare dso_local i32 @hkey_sound_mute(i32, i32, i32*) #1

declare dso_local i32 @acpi_event_sleep_button_sleep(%struct.acpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
