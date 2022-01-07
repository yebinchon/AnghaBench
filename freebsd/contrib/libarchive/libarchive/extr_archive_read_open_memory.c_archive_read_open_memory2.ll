; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_memory.c_archive_read_open_memory2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_memory.c_archive_read_open_memory2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_memory_data = type { i8*, i8*, i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@memory_read_open = common dso_local global i32 0, align 4
@memory_read = common dso_local global i32 0, align 4
@memory_read_seek = common dso_local global i32 0, align 4
@memory_read_skip = common dso_local global i32 0, align 4
@memory_read_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open_memory2(%struct.archive* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.read_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i64 @calloc(i32 1, i32 32)
  %12 = inttoptr i64 %11 to %struct.read_memory_data*
  store %struct.read_memory_data* %12, %struct.read_memory_data** %10, align 8
  %13 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %14 = icmp eq %struct.read_memory_data* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @archive_set_error(%struct.archive* %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %23 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %25 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %27 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %32 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %35 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.archive*, %struct.archive** %6, align 8
  %37 = load i32, i32* @memory_read_open, align 4
  %38 = call i32 @archive_read_set_open_callback(%struct.archive* %36, i32 %37)
  %39 = load %struct.archive*, %struct.archive** %6, align 8
  %40 = load i32, i32* @memory_read, align 4
  %41 = call i32 @archive_read_set_read_callback(%struct.archive* %39, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %6, align 8
  %43 = load i32, i32* @memory_read_seek, align 4
  %44 = call i32 @archive_read_set_seek_callback(%struct.archive* %42, i32 %43)
  %45 = load %struct.archive*, %struct.archive** %6, align 8
  %46 = load i32, i32* @memory_read_skip, align 4
  %47 = call i32 @archive_read_set_skip_callback(%struct.archive* %45, i32 %46)
  %48 = load %struct.archive*, %struct.archive** %6, align 8
  %49 = load i32, i32* @memory_read_close, align 4
  %50 = call i32 @archive_read_set_close_callback(%struct.archive* %48, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %6, align 8
  %52 = load %struct.read_memory_data*, %struct.read_memory_data** %10, align 8
  %53 = call i32 @archive_read_set_callback_data(%struct.archive* %51, %struct.read_memory_data* %52)
  %54 = load %struct.archive*, %struct.archive** %6, align 8
  %55 = call i32 @archive_read_open1(%struct.archive* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %20, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_seek_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_callback_data(%struct.archive*, %struct.read_memory_data*) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
