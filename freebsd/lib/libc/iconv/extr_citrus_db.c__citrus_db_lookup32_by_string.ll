; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup32_by_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup32_by_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i32 }
%struct._citrus_db_locator = type { i32 }
%struct._region = type { i32 }

@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_lookup32_by_string(%struct._citrus_db* %0, i8* %1, i32* %2, %struct._citrus_db_locator* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_db*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._citrus_db_locator*, align 8
  %10 = alloca %struct._region, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._citrus_db* %0, %struct._citrus_db** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct._citrus_db_locator* %3, %struct._citrus_db_locator** %9, align 8
  %13 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %16 = call i32 @_citrus_db_lookup_by_string(%struct._citrus_db* %13, i8* %14, %struct._region* %10, %struct._citrus_db_locator* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = call i32 @_region_size(%struct._region* %10)
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EFTYPE, align 4
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = call i32 @_region_head(%struct._region* %10)
  %31 = call i32 @memcpy(i32* %11, i32 %30, i32 4)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @be32toh(i32 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %24, %19
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @_citrus_db_lookup_by_string(%struct._citrus_db*, i8*, %struct._region*, %struct._citrus_db_locator*) #1

declare dso_local i32 @_region_size(%struct._region*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @_region_head(%struct._region*) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
