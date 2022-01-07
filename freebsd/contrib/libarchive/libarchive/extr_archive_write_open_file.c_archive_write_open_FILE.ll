; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_file.c_archive_write_open_FILE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_file.c_archive_write_open_FILE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_FILE_data = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@file_open = common dso_local global i32 0, align 4
@file_write = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_open_FILE(%struct.archive* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.write_FILE_data*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i64 @malloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.write_FILE_data*
  store %struct.write_FILE_data* %8, %struct.write_FILE_data** %6, align 8
  %9 = load %struct.write_FILE_data*, %struct.write_FILE_data** %6, align 8
  %10 = icmp eq %struct.write_FILE_data* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @archive_set_error(%struct.archive* %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.write_FILE_data*, %struct.write_FILE_data** %6, align 8
  %19 = getelementptr inbounds %struct.write_FILE_data, %struct.write_FILE_data* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.archive*, %struct.archive** %4, align 8
  %21 = load %struct.write_FILE_data*, %struct.write_FILE_data** %6, align 8
  %22 = load i32, i32* @file_open, align 4
  %23 = load i32, i32* @file_write, align 4
  %24 = load i32, i32* @file_close, align 4
  %25 = call i32 @archive_write_open(%struct.archive* %20, %struct.write_FILE_data* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @archive_write_open(%struct.archive*, %struct.write_FILE_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
