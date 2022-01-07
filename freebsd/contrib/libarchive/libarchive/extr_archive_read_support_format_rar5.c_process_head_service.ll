; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64)* @process_head_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_head_service(%struct.archive_read* %0, %struct.rar5* %1, %struct.archive_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.rar5*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.rar5* %1, %struct.rar5** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %12 = load %struct.rar5*, %struct.rar5** %7, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @process_head_file(%struct.archive_read* %11, %struct.rar5* %12, %struct.archive_entry* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.rar5*, %struct.rar5** %7, align 8
  %23 = getelementptr inbounds %struct.rar5, %struct.rar5* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %26 = call i32 @rar5_read_data_skip(%struct.archive_read* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30, %19
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @process_head_file(%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64) #1

declare dso_local i32 @rar5_read_data_skip(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
