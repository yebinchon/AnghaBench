; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_rpm.c_rpm_bidder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_rpm.c_rpm_bidder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i8*, %struct.rpm*, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.rpm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_FILTER_RPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@rpm_filter_read = common dso_local global i32 0, align 4
@rpm_filter_close = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't allocate data for rpm\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ST_LEAD = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*)* @rpm_bidder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_bidder_init(%struct.archive_read_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read_filter*, align 8
  %4 = alloca %struct.rpm*, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %3, align 8
  %5 = load i32, i32* @ARCHIVE_FILTER_RPM, align 4
  %6 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 4
  %8 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %9 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @rpm_filter_read, align 4
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %12 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %14 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @rpm_filter_close, align 4
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %17 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = call i64 @calloc(i32 4, i32 1)
  %19 = inttoptr i64 %18 to %struct.rpm*
  store %struct.rpm* %19, %struct.rpm** %4, align 8
  %20 = load %struct.rpm*, %struct.rpm** %4, align 8
  %21 = icmp eq %struct.rpm* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %24 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.rpm*, %struct.rpm** %4, align 8
  %32 = load %struct.archive_read_filter*, %struct.archive_read_filter** %3, align 8
  %33 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %32, i32 0, i32 1
  store %struct.rpm* %31, %struct.rpm** %33, align 8
  %34 = load i32, i32* @ST_LEAD, align 4
  %35 = load %struct.rpm*, %struct.rpm** %4, align 8
  %36 = getelementptr inbounds %struct.rpm, %struct.rpm* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
