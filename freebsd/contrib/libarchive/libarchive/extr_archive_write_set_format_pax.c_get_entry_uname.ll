; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_get_entry_uname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_get_entry_uname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_string_conv = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Can't allocate memory for Uname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*)* @get_entry_uname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entry_uname(%struct.archive_write* %0, %struct.archive_entry* %1, i8** %2, i64* %3, %struct.archive_string_conv* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_write*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.archive_string_conv*, align 8
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %7, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.archive_string_conv* %4, %struct.archive_string_conv** %11, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %14 = load i8**, i8*** %9, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %17 = call i32 @archive_entry_uname_l(%struct.archive_entry* %13, i8** %14, i64* %15, %struct.archive_string_conv* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %26 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %25, i32 0, i32 0
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = call i32 @archive_set_error(i32* %26, i64 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30, %24
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @archive_entry_uname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
