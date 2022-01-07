; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_set_bidder_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_set_bidder_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32, i32*, i32, i32, %struct.program_bidder* }
%struct.program_bidder = type { i64, i32 }

@program_bidder_bid = common dso_local global i32 0, align 4
@program_bidder_init = common dso_local global i32 0, align 4
@program_bidder_free = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.program_bidder*, i8*, i64)* @set_bidder_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bidder_signature(%struct.archive_read_filter_bidder* %0, %struct.program_bidder* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.archive_read_filter_bidder*, align 8
  %6 = alloca %struct.program_bidder*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %5, align 8
  store %struct.program_bidder* %1, %struct.program_bidder** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %17 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @malloc(i64 %18)
  %20 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %21 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %23 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @memcpy(i32 %24, i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %14, %11, %4
  %29 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %30 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %31 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %30, i32 0, i32 4
  store %struct.program_bidder* %29, %struct.program_bidder** %31, align 8
  %32 = load i32, i32* @program_bidder_bid, align 4
  %33 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %34 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @program_bidder_init, align 4
  %36 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %37 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %39 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @program_bidder_free, align 4
  %41 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %5, align 8
  %42 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %43
}

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
