; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_program_bidder_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_program_bidder_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { %struct.program_bidder* }
%struct.program_bidder = type { i64, i32, i32 }
%struct.archive_read_filter = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @program_bidder_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_bidder_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca %struct.program_bidder*, align 8
  %7 = alloca i8*, align 8
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  %8 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  %9 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %8, i32 0, i32 0
  %10 = load %struct.program_bidder*, %struct.program_bidder** %9, align 8
  store %struct.program_bidder* %10, %struct.program_bidder** %6, align 8
  %11 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %12 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %17 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %18 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %16, i64 %19, i32* null)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %51

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %27 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %30 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @memcmp(i8* %25, i32 %28, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %51

35:                                               ; preds = %24
  %36 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %37 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = mul nsw i32 %39, 8
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %43 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load %struct.program_bidder*, %struct.program_bidder** %6, align 8
  %49 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @INT_MAX, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %46, %35, %34, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i64, i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
