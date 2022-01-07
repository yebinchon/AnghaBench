; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_file_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read temporary file(%jd)\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i64, i64)* @write_file_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_file_contents(%struct.archive_write* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load %struct.iso9660*, %struct.iso9660** %14, align 8
  store %struct.iso9660* %15, %struct.iso9660** %8, align 8
  %16 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @lseek(i32 %18, i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %63, %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %27 = call i8* @wb_buffptr(%struct.archive_write* %26)
  store i8* %27, i8** %12, align 8
  %28 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %29 = call i64 @wb_remaining(%struct.archive_write* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %25
  %36 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %37 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @read(i32 %38, i8* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 0
  %47 = load i32, i32* @errno, align 4
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @archive_set_error(i32* %46, i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %51, i32* %4, align 4
  br label %66

52:                                               ; preds = %35
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @wb_consume(%struct.archive_write* %56, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %52
  br label %22

64:                                               ; preds = %22
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %61, %44
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i64 @wb_remaining(%struct.archive_write*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
