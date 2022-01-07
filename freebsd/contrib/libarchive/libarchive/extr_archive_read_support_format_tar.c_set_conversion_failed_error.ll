; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_set_conversion_failed_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_set_conversion_failed_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_string_conv = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Can't allocate memory for %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s can't be converted from %s to current locale.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_string_conv*, i8*)* @set_conversion_failed_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_conversion_failed_error(%struct.archive_read* %0, %struct.archive_string_conv* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_string_conv*, align 8
  %7 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_string_conv* %1, %struct.archive_string_conv** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOMEM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load i64, i64* @ENOMEM, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i32*, i64, i8*, i8*, ...) @archive_set_error(i32* %13, i64 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 0
  %21 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %22 = sext i32 %21 to i64
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.archive_string_conv*, %struct.archive_string_conv** %6, align 8
  %25 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %24)
  %26 = call i32 (i32*, i64, i8*, i8*, ...) @archive_set_error(i32* %20, i64 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  %27 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %18, %11
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @archive_set_error(i32*, i64, i8*, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
