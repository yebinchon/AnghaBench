; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported hash type (0x%x)\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, i64*)* @parse_file_extra_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_extra_hash(%struct.archive_read* %0, %struct.rar5* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.rar5*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.rar5* %1, %struct.rar5** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %13 = call i32 @read_var_sized(%struct.archive_read* %12, i64* %8, i64* %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %16, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, %18
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* @ARCHIVE_OK, align 8
  %23 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @consume(%struct.archive_read* %23, i32 %25)
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %17
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  store i32 4, i32* %11, align 4
  %34 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %35 = call i32 @read_ahead(%struct.archive_read* %34, i32 4, i32** %10)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %33
  %40 = load %struct.rar5*, %struct.rar5** %6, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.rar5*, %struct.rar5** %6, align 8
  %44 = getelementptr inbounds %struct.rar5, %struct.rar5* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @memcpy(i32* %45, i32* %46, i32 4)
  %48 = load i64, i64* @ARCHIVE_OK, align 8
  %49 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %50 = call i64 @consume(%struct.archive_read* %49, i32 4)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %39
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 4
  store i64 %57, i64* %55, align 8
  br label %66

58:                                               ; preds = %30
  %59 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %60 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %59, i32 0, i32 0
  %61 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %62 = load i64, i64* %8, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @archive_set_error(i32* %60, i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %54
  %67 = load i64, i64* @ARCHIVE_OK, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %58, %52, %37, %28, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i64*) #1

declare dso_local i64 @consume(%struct.archive_read*, i32) #1

declare dso_local i32 @read_ahead(%struct.archive_read*, i32, i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
