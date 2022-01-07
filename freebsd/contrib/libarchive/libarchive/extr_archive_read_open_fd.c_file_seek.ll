; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_fd_data = type { i32 }

@errno = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"A file descriptor(%d) is not seekable(PIPE)\00", align 1
@ARCHIVE_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error seeking in a file descriptor(%d)\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64, i32)* @file_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_seek(%struct.archive* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.read_fd_data*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.read_fd_data*
  store %struct.read_fd_data* %13, %struct.read_fd_data** %10, align 8
  %14 = load %struct.read_fd_data*, %struct.read_fd_data** %10, align 8
  %15 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @lseek(i32 %16, i64 %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %5, align 8
  br label %44

24:                                               ; preds = %4
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ESPIPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = load %struct.read_fd_data*, %struct.read_fd_data** %10, align 8
  %32 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @archive_set_error(%struct.archive* %29, i64 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %35, i64* %5, align 8
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.archive*, %struct.archive** %6, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = load %struct.read_fd_data*, %struct.read_fd_data** %10, align 8
  %40 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @archive_set_error(%struct.archive* %37, i64 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %36, %28, %22
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
