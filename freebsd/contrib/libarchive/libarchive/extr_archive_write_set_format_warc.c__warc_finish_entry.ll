; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c__warc_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c__warc_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.warc_s* }
%struct.warc_s = type { i64 }

@_warc_finish_entry._eor = internal constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@AE_IFREG = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @_warc_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.warc_s*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 0
  %8 = load %struct.warc_s*, %struct.warc_s** %7, align 8
  store %struct.warc_s* %8, %struct.warc_s** %4, align 8
  %9 = load %struct.warc_s*, %struct.warc_s** %4, align 8
  %10 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AE_IFREG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %16 = call i32 @__archive_write_output(%struct.archive_write* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_warc_finish_entry._eor, i64 0, i64 0), i32 4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.warc_s*, %struct.warc_s** %4, align 8
  %25 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
