; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@PATH_TABLE_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, %struct.vdd*)* @write_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_path_table(%struct.archive_write* %0, i32 %1, %struct.vdd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vdd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vdd* %2, %struct.vdd** %7, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %11, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.vdd*, %struct.vdd** %7, align 8
  %15 = getelementptr inbounds %struct.vdd, %struct.vdd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.vdd*, %struct.vdd** %7, align 8
  %23 = call i32 @_write_path_table(%struct.archive_write* %19, i32 %20, i32 %21, %struct.vdd* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %50

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @PATH_TABLE_BLOCK_SIZE, align 8
  %39 = urem i64 %37, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %44 = load i64, i64* @PATH_TABLE_BLOCK_SIZE, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @write_null(%struct.archive_write* %43, i64 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @_write_path_table(%struct.archive_write*, i32, i32, %struct.vdd*) #1

declare dso_local i32 @write_null(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
