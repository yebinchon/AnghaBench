; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_set_linear_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_set_linear_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_std_linear_zone = type { i64, i64, i64 }

@EFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_std_linear_zone*, i64, i64)* @set_linear_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_mapper_std_linear_zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct._citrus_mapper_std_linear_zone* %0, %struct._citrus_mapper_std_linear_zone** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EFTYPE, align 4
  store i32 %12, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %5, align 8
  %16 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %5, align 8
  %19 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %20, %21
  %23 = add nsw i64 %22, 1
  %24 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %5, align 8
  %25 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
