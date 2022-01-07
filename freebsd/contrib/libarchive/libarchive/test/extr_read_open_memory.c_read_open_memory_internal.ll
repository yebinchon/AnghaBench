; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_read_open_memory.c_read_open_memory_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_read_open_memory.c_read_open_memory_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_memory_data = type { i8*, i8*, i64, i32, i64, %struct.read_memory_data*, i32 }

@memory_read_seek = common dso_local global i32 0, align 4
@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@memory_read_open = common dso_local global i32 0, align 4
@memory_read_skip = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@memory_read = common dso_local global i32 0, align 4
@memory_read_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i64, i64, i32)* @read_open_memory_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_open_memory_internal(%struct.archive* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.read_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.read_memory_data* null, %struct.read_memory_data** %12, align 8
  %13 = load i32, i32* %11, align 4
  switch i32 %13, label %92 [
    i32 3, label %14
    i32 2, label %19
    i32 1, label %27
  ]

14:                                               ; preds = %5
  %15 = load %struct.archive*, %struct.archive** %7, align 8
  %16 = load i32, i32* @memory_read_seek, align 4
  %17 = call i32 @archive_read_set_seek_callback(%struct.archive* %15, i32 %16)
  %18 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %19

19:                                               ; preds = %5, %14
  %20 = load %struct.archive*, %struct.archive** %7, align 8
  %21 = load i32, i32* @memory_read_open, align 4
  %22 = call i32 @archive_read_set_open_callback(%struct.archive* %20, i32 %21)
  %23 = load %struct.archive*, %struct.archive** %7, align 8
  %24 = load i32, i32* @memory_read_skip, align 4
  %25 = call i32 @archive_read_set_skip_callback(%struct.archive* %23, i32 %24)
  %26 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %27

27:                                               ; preds = %5, %19
  %28 = call i8* @malloc(i32 56)
  %29 = bitcast i8* %28 to %struct.read_memory_data*
  store %struct.read_memory_data* %29, %struct.read_memory_data** %12, align 8
  %30 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %31 = icmp eq %struct.read_memory_data* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.archive*, %struct.archive** %7, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @archive_set_error(%struct.archive* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %6, align 4
  br label %95

37:                                               ; preds = %27
  %38 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %39 = call i32 @memset(%struct.read_memory_data* %38, i32 0, i32 56)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %42 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %44 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %46 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %52 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %55 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %57 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %56, i32 0, i32 3
  store i32 32, i32* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %60 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = add i64 %58, %63
  %65 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %66 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %68 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i8* @malloc(i32 %70)
  %72 = bitcast i8* %71 to %struct.read_memory_data*
  %73 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %74 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %73, i32 0, i32 5
  store %struct.read_memory_data* %72, %struct.read_memory_data** %74, align 8
  %75 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %76 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %75, i32 0, i32 5
  %77 = load %struct.read_memory_data*, %struct.read_memory_data** %76, align 8
  %78 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %79 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(%struct.read_memory_data* %77, i32 165, i32 %81)
  %83 = load %struct.archive*, %struct.archive** %7, align 8
  %84 = load i32, i32* @memory_read, align 4
  %85 = call i32 @archive_read_set_read_callback(%struct.archive* %83, i32 %84)
  %86 = load %struct.archive*, %struct.archive** %7, align 8
  %87 = load i32, i32* @memory_read_close, align 4
  %88 = call i32 @archive_read_set_close_callback(%struct.archive* %86, i32 %87)
  %89 = load %struct.archive*, %struct.archive** %7, align 8
  %90 = load %struct.read_memory_data*, %struct.read_memory_data** %12, align 8
  %91 = call i32 @archive_read_set_callback_data(%struct.archive* %89, %struct.read_memory_data* %90)
  br label %92

92:                                               ; preds = %37, %5
  %93 = load %struct.archive*, %struct.archive** %7, align 8
  %94 = call i32 @archive_read_open1(%struct.archive* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %32
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @archive_read_set_seek_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @memset(%struct.read_memory_data*, i32, i32) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_callback_data(%struct.archive*, %struct.read_memory_data*) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
