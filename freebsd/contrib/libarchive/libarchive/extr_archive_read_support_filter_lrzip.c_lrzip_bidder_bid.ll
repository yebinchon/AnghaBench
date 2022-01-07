; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_lrzip.c_lrzip_bidder_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_lrzip.c_lrzip_bidder_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32 }
%struct.archive_read_filter = type { i32 }

@LRZIP_HEADER_MAGIC = common dso_local global i32 0, align 4
@LRZIP_HEADER_MAGIC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @lrzip_bidder_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrzip_bidder_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  %10 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  store i64 6, i64* %8, align 8
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %11, i64 %12, i64* %7)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %50

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @LRZIP_HEADER_MAGIC, align 4
  %23 = load i64, i64* @LRZIP_HEADER_MAGIC_LEN, align 8
  %24 = call i64 @memcmp(i8* %21, i32 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @LRZIP_HEADER_MAGIC_LEN, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* @LRZIP_HEADER_MAGIC_LEN, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %34
  store i32 0, i32* %3, align 4
  br label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %46, %33, %26, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i64, i64*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
