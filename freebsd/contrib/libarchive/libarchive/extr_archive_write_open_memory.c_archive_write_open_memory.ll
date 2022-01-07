; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_archive_write_open_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_archive_write_open_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_memory_data = type { i64, i64*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@memory_write_open = common dso_local global i32 0, align 4
@memory_write = common dso_local global i32 0, align 4
@memory_write_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_open_memory(%struct.archive* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.write_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.write_memory_data*
  store %struct.write_memory_data* %12, %struct.write_memory_data** %10, align 8
  %13 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %14 = icmp eq %struct.write_memory_data* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @archive_set_error(%struct.archive* %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %23 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %26 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %29 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %28, i32 0, i32 1
  store i64* %27, i64** %29, align 8
  %30 = load %struct.archive*, %struct.archive** %6, align 8
  %31 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %32 = load i32, i32* @memory_write_open, align 4
  %33 = load i32, i32* @memory_write, align 4
  %34 = load i32, i32* @memory_write_close, align 4
  %35 = call i32 @archive_write_open(%struct.archive* %30, %struct.write_memory_data* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %20, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @archive_write_open(%struct.archive*, %struct.write_memory_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
