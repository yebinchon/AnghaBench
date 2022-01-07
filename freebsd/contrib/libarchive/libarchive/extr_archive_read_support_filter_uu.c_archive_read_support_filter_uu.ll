; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_archive_read_support_filter_uu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_archive_read_support_filter_uu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.archive_read_filter_bidder = type { i8*, i32*, i32*, i32, i32, i32* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_read_support_filter_uu\00", align 1
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"uu\00", align 1
@uudecode_bidder_bid = common dso_local global i32 0, align 4
@uudecode_bidder_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_filter_uu(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_read_filter_bidder*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_read*
  store %struct.archive_read* %7, %struct.archive_read** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = call i64 @__archive_read_get_bidder(%struct.archive_read* %12, %struct.archive_read_filter_bidder** %5)
  %14 = load i64, i64* @ARCHIVE_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %20 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %22 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @uudecode_bidder_bid, align 4
  %24 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %25 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @uudecode_bidder_init, align 4
  %27 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %28 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %30 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %32 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* @ARCHIVE_OK, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @__archive_read_get_bidder(%struct.archive_read*, %struct.archive_read_filter_bidder**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
