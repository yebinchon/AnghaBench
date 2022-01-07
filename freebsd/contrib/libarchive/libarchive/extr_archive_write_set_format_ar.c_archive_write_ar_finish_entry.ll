; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.ar_w = type { i64, i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Entry remaining bytes larger than 0\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Padding wrong size: %ju should be 1 or 0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_ar_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_ar_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.ar_w*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ar_w*
  store %struct.ar_w* %9, %struct.ar_w** %4, align 8
  %10 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %11 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 0
  %17 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %18 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %16, i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %22 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %20
  %28 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %29 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  %35 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %36 = load %struct.ar_w*, %struct.ar_w** %4, align 8
  %37 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %34, i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %27
  %42 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %43 = call i32 @__archive_write_output(%struct.archive_write* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %32, %25, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
