; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup8_by_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup8_by_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i32 }
%struct._citrus_db_locator = type { i32 }
%struct._region = type { i32 }

@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_lookup8_by_string(%struct._citrus_db* %0, i8* %1, i32* %2, %struct._citrus_db_locator* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_db*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._citrus_db_locator*, align 8
  %10 = alloca %struct._region, align 4
  %11 = alloca i32, align 4
  store %struct._citrus_db* %0, %struct._citrus_db** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct._citrus_db_locator* %3, %struct._citrus_db_locator** %9, align 8
  %12 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %15 = call i32 @_citrus_db_lookup_by_string(%struct._citrus_db* %12, i8* %13, %struct._region* %10, %struct._citrus_db_locator* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = call i32 @_region_size(%struct._region* %10)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EFTYPE, align 4
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @_region_head(%struct._region* %10)
  %31 = call i32 @memcpy(i32* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %28, %25
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %23, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @_citrus_db_lookup_by_string(%struct._citrus_db*, i8*, %struct._region*, %struct._citrus_db_locator*) #1

declare dso_local i32 @_region_size(%struct._region*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @_region_head(%struct._region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
