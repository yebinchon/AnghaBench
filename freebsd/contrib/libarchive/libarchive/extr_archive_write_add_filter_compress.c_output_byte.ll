; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, %struct.private_data* }
%struct.private_data = type { i8*, i64, i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8)* @output_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_byte(%struct.archive_write_filter* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.private_data*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %9 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %8, i32 0, i32 1
  %10 = load %struct.private_data*, %struct.private_data** %9, align 8
  store %struct.private_data* %10, %struct.private_data** %6, align 8
  %11 = load i8, i8* %5, align 1
  %12 = load %struct.private_data*, %struct.private_data** %6, align 8
  %13 = getelementptr inbounds %struct.private_data, %struct.private_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.private_data*, %struct.private_data** %6, align 8
  %16 = getelementptr inbounds %struct.private_data, %struct.private_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 %11, i8* %19, align 1
  %20 = load %struct.private_data*, %struct.private_data** %6, align 8
  %21 = getelementptr inbounds %struct.private_data, %struct.private_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.private_data*, %struct.private_data** %6, align 8
  %25 = getelementptr inbounds %struct.private_data, %struct.private_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.private_data*, %struct.private_data** %6, align 8
  %28 = getelementptr inbounds %struct.private_data, %struct.private_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %33 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.private_data*, %struct.private_data** %6, align 8
  %36 = getelementptr inbounds %struct.private_data, %struct.private_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.private_data*, %struct.private_data** %6, align 8
  %39 = getelementptr inbounds %struct.private_data, %struct.private_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @__archive_write_filter(i32 %34, i8* %37, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.private_data*, %struct.private_data** %6, align 8
  %49 = getelementptr inbounds %struct.private_data, %struct.private_data* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %2
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @__archive_write_filter(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
