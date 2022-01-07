; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_string = type { i8* }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Version entry without file name\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c";%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, i64*)* @parse_file_extra_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_extra_version(%struct.archive_read* %0, %struct.archive_entry* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.archive_string, align 8
  %12 = alloca %struct.archive_string, align 8
  %13 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %15 = call i32 @read_var_sized(%struct.archive_read* %14, i64* %8, i64* %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, %20
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* @ARCHIVE_OK, align 8
  %25 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @consume(%struct.archive_read* %25, i64 %26)
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %30, i32* %4, align 4
  br label %78

31:                                               ; preds = %19
  %32 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %33 = call i32 @read_var_sized(%struct.archive_read* %32, i64* %9, i64* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %4, align 4
  br label %78

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* @ARCHIVE_OK, align 8
  %43 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @consume(%struct.archive_read* %43, i64 %44)
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %37
  %50 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %51 = call i8* @archive_entry_pathname_utf8(%struct.archive_entry* %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %55, i32 0, i32 0
  %57 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %58 = call i32 @archive_set_error(i32* %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %59, i32* %4, align 4
  br label %78

60:                                               ; preds = %49
  %61 = call i32 @archive_string_init(%struct.archive_string* %11)
  %62 = call i32 @archive_string_init(%struct.archive_string* %12)
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @archive_string_sprintf(%struct.archive_string* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @archive_strcat(%struct.archive_string* %12, i8* %65)
  %67 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %11, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @archive_strcat(%struct.archive_string* %12, i8* %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %71 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %12, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @archive_entry_update_pathname_utf8(%struct.archive_entry* %70, i8* %72)
  %74 = call i32 @archive_string_free(%struct.archive_string* %11)
  %75 = call i32 @archive_string_free(%struct.archive_string* %12)
  %76 = load i64, i64* @ARCHIVE_OK, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %60, %54, %47, %35, %29, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i64*) #1

declare dso_local i64 @consume(%struct.archive_read*, i64) #1

declare dso_local i8* @archive_entry_pathname_utf8(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i64) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_entry_update_pathname_utf8(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
