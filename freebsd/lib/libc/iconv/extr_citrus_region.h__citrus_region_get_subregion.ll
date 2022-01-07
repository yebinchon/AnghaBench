; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_region.h__citrus_region_get_subregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_region.h__citrus_region_get_subregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_region*, %struct._citrus_region*, i64, i64)* @_citrus_region_get_subregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_region_get_subregion(%struct._citrus_region* %0, %struct._citrus_region* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_region*, align 8
  %7 = alloca %struct._citrus_region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._citrus_region* %0, %struct._citrus_region** %6, align 8
  store %struct._citrus_region* %1, %struct._citrus_region** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i64 @_citrus_region_check(%struct._citrus_region* %10, i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %23

16:                                               ; preds = %4
  %17 = load %struct._citrus_region*, %struct._citrus_region** %6, align 8
  %18 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @_citrus_region_offset(%struct._citrus_region* %18, i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @_citrus_region_init(%struct._citrus_region* %17, i32 %20, i64 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64 @_citrus_region_check(%struct._citrus_region*, i64, i64) #1

declare dso_local i32 @_citrus_region_init(%struct._citrus_region*, i32, i64) #1

declare dso_local i32 @_citrus_region_offset(%struct._citrus_region*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
