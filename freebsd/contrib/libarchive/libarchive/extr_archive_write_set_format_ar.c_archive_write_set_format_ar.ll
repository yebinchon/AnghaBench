; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_set_format_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_set_format_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i8*, i32, {}*, i32, i32, i32, %struct.ar_w*, i32 }
%struct.ar_w = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate ar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@archive_write_ar_header = common dso_local global i32 0, align 4
@archive_write_ar_data = common dso_local global i32 0, align 4
@archive_write_ar_close = common dso_local global i32 0, align 4
@archive_write_ar_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_set_format_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_set_format_ar(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.ar_w*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 2
  %7 = bitcast {}** %6 to i32 (%struct.archive_write*)**
  %8 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %7, align 8
  %9 = icmp ne i32 (%struct.archive_write*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 2
  %13 = bitcast {}** %12 to i32 (%struct.archive_write*)**
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %16 = call i32 %14(%struct.archive_write* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = call i64 @calloc(i32 1, i32 4)
  %19 = inttoptr i64 %18 to %struct.ar_w*
  store %struct.ar_w* %19, %struct.ar_w** %4, align 8
  %20 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %21 = icmp eq %struct.ar_w* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %24 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %23, i32 0, i32 7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @archive_set_error(i32* %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %30 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %31 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %30, i32 0, i32 6
  store %struct.ar_w* %29, %struct.ar_w** %31, align 8
  %32 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %33 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @archive_write_ar_header, align 4
  %35 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %36 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @archive_write_ar_data, align 4
  %38 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %39 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @archive_write_ar_close, align 4
  %41 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %42 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %44 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %43, i32 0, i32 2
  %45 = bitcast {}** %44 to i32 (%struct.archive_write*)**
  store i32 (%struct.archive_write*)* @archive_write_ar_free, i32 (%struct.archive_write*)** %45, align 8
  %46 = load i32, i32* @archive_write_ar_finish_entry, align 4
  %47 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %48 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %28, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_write_ar_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
