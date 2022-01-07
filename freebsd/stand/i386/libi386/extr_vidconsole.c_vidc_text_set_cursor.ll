; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_text_set_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_text_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VGA_REG_BASE = common dso_local global i32 0, align 4
@VGA_CRTC_MAX_SCAN_LINE = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_START = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_END = common dso_local global i32 0, align 4
@TEXT_COLS = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LOC_HIGH = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LOC_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @vidc_text_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidc_text_set_cursor(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @VGA_REG_BASE, align 4
  %12 = load i32, i32* @VGA_CRTC_MAX_SCAN_LINE, align 4
  %13 = call i32 @vga_get_crtc(i32 %11, i32 %12)
  %14 = and i32 %13, 31
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @VGA_REG_BASE, align 4
  %16 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %17 = call i32 @vga_get_crtc(i32 %15, i32 %16)
  %18 = and i32 %17, 192
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @VGA_REG_BASE, align 4
  %20 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %21 = call i32 @vga_get_crtc(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TEXT_COLS, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @VGA_REG_BASE, align 4
  %31 = load i32, i32* @VGA_CRTC_CURSOR_LOC_HIGH, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = call i32 @vga_set_crtc(i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @VGA_REG_BASE, align 4
  %36 = load i32, i32* @VGA_CRTC_CURSOR_LOC_LOW, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @vga_set_crtc(i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, 32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %24
  %45 = load i32, i32* @VGA_REG_BASE, align 4
  %46 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @vga_set_crtc(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @VGA_REG_BASE, align 4
  %50 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vga_set_crtc(i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @vga_get_crtc(i32, i32) #1

declare dso_local i32 @vga_set_crtc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
