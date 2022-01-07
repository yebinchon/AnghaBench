; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_symlink_stored.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_symlink_stored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.archive_string_conv = type { i32 }
%struct.rar = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't allocate memory for link\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"link cannot be converted from %s to current locale.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.archive_string_conv*)* @read_symlink_stored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symlink_stored(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.archive_string_conv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.archive_string_conv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rar*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store %struct.archive_string_conv* %2, %struct.archive_string_conv** %7, align 8
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rar*
  store %struct.rar* %18, %struct.rar** %10, align 8
  %19 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %20 = load %struct.rar*, %struct.rar** %10, align 8
  %21 = getelementptr inbounds %struct.rar, %struct.rar* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @rar_read_ahead(%struct.archive_read* %19, i64 %22, i32* null)
  store i8* %23, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.rar*, %struct.rar** %10, align 8
  %32 = getelementptr inbounds %struct.rar, %struct.rar* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %35 = call i64 @archive_entry_copy_symlink_l(%struct.archive_entry* %29, i8* %30, i64 %33, %struct.archive_string_conv* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOMEM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 0
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %43, i64 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %37
  %48 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %49 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %48, i32 0, i32 0
  %50 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %53 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %52)
  %54 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %49, i64 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %47, %27
  %57 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %58 = load %struct.rar*, %struct.rar** %10, align 8
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @__archive_read_consume(%struct.archive_read* %57, i64 %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %56, %41, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i8* @rar_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i64 @archive_entry_copy_symlink_l(%struct.archive_entry*, i8*, i64, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
