; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_hkey_lcd_brightness.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_hkey_lcd_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_PROFILE_PERFORMANCE = common dso_local global i64 0, align 8
@HKEY_REG_LCD_BRIGHTNESS_AC = common dso_local global i32 0, align 4
@HKEY_REG_LCD_BRIGHTNESS_DC = common dso_local global i32 0, align 4
@panasonic = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @hkey_lcd_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkey_lcd_brightness(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = call i64 (...) @power_profile_get_state()
  %12 = load i64, i64* @POWER_PROFILE_PERFORMANCE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @HKEY_REG_LCD_BRIGHTNESS_AC, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @HKEY_REG_LCD_BRIGHTNESS_DC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @panasonic, align 4
  %21 = call i32 @ACPI_SERIAL_ASSERT(i32 %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %50 [
    i32 128, label %23
    i32 129, label %45
  ]

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hkey_lcd_brightness_max(i32 %24, i32 129, i32* %9)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hkey_lcd_brightness_min(i32 %26, i32 129, i32* %10)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %23
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @acpi_panasonic_sset(i32 %40, i32 %41, i32 %43)
  br label %50

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @acpi_panasonic_sinf(i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %18, %45, %39
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @power_profile_get_state(...) #1

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @hkey_lcd_brightness_max(i32, i32, i32*) #1

declare dso_local i32 @hkey_lcd_brightness_min(i32, i32, i32*) #1

declare dso_local i32 @acpi_panasonic_sset(i32, i32, i32) #1

declare dso_local i32 @acpi_panasonic_sinf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
