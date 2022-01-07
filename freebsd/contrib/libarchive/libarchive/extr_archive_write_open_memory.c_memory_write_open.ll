; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_memory_write_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_memory_write_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_memory_data = type { i64, i64* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @memory_write_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_write_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.write_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.write_memory_data*
  store %struct.write_memory_data* %7, %struct.write_memory_data** %5, align 8
  %8 = load %struct.write_memory_data*, %struct.write_memory_data** %5, align 8
  %9 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.write_memory_data*, %struct.write_memory_data** %5, align 8
  %11 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.write_memory_data*, %struct.write_memory_data** %5, align 8
  %16 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.write_memory_data*, %struct.write_memory_data** %5, align 8
  %19 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = call i32 @archive_write_get_bytes_in_last_block(%struct.archive* %22)
  %24 = icmp eq i32 -1, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %29
}

declare dso_local i32 @archive_write_get_bytes_in_last_block(%struct.archive*) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
