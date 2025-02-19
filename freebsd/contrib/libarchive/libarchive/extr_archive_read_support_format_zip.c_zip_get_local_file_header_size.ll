; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_get_local_file_header_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_get_local_file_header_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncated ZIP file header\00", align 1
@ARCHIVE_WARN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Damaged Zip archive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64)* @zip_get_local_file_header_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip_get_local_file_header_size(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, 30
  %12 = call i8* @__archive_read_ahead(%struct.archive_read* %9, i64 %11, i32* null)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %18 = call i32 @archive_set_error(i32* %16, i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @ARCHIVE_WARN, align 8
  store i64 %19, i64* %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @memcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0
  %30 = call i32 @archive_set_error(i32* %29, i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @ARCHIVE_WARN, align 8
  store i64 %31, i64* %3, align 8
  br label %43

32:                                               ; preds = %20
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 26
  %35 = call i64 @archive_le16dec(i8* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 28
  %38 = call i64 @archive_le16dec(i8* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 30, %39
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %32, %27, %14
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @archive_le16dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
