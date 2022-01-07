; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_get_str_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_get_str_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.archive_string = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Value is longer than %zu characters for option ``%s''\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_string*, i64, i8*, i8*)* @get_str_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_str_opt(%struct.archive_write* %0, %struct.archive_string* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_write*, align 8
  %8 = alloca %struct.archive_string*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %7, align 8
  store %struct.archive_string* %1, %struct.archive_string** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 0
  %19 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %20, i8* %21)
  %23 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %5
  %25 = load %struct.archive_string*, %struct.archive_string** %8, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @archive_strcpy(%struct.archive_string* %25, i8* %26)
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i64, i8*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
