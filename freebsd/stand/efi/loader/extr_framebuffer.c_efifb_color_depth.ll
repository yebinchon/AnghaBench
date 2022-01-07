; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_color_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_fb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efi_fb*)* @efifb_color_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efifb_color_depth(%struct.efi_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efi_fb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efi_fb* %0, %struct.efi_fb** %3, align 8
  %6 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %7 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %10 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %14 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %18 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %25

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
